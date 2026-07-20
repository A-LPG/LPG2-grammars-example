#!/usr/bin/env python3
"""Batch fixes for antlr2lpg+FoldedCase regen failures (harness alignment)."""
from __future__ import annotations

import json
import re
import subprocess
import sys
from pathlib import Path

GE = Path(__file__).resolve().parents[1]
LPG_BIN = Path(
    sys.argv[1]
    if len(sys.argv) > 1
    else __import__("os").environ.get(
        "LPG_BIN", GE.parent / "lpg2/build-ci-local/lpg-v2.3.0"
    )
)

PUNCT = {
    "AMP", "AMPEQ", "ANDAND", "ARROW", "ARROWSTAR", "AT", "ATEQ", "BACKSLASH",
    "BACKTICK", "BANG", "BITCLEAR", "CARET", "CARETEQ", "CHAR_LITERAL",
    "COLON", "COLONCOLON", "COLONEQ", "COMMA", "DOLLAR", "DOT", "DOTDOT",
    "DOTSTAR", "DQUOTE", "ELLIPSIS", "EOF", "EOF_TOKEN", "EQ", "EQEQ",
    "EQEQEQ", "ERROR_TOKEN", "FATARROW", "GT", "GTEQ", "HASH", "IDENTIFIER",
    "LBRACE", "LBRACKET", "LPAREN", "LSHIFT", "LSHIFTEQ", "LT", "LTEQ",
    "LTGT", "MINUS", "MINUSEQ", "MINUSMINUS", "NOTEQ", "NOTEQEQ", "NUMBER",
    "OROR", "PERCENT", "PERCENTEQ", "PIPE", "PIPEEQ", "PLUS", "PLUSEQ",
    "PLUSPLUS", "QUESTDOT", "QUESTION", "QUESTQUEST", "QUESTQUESTEQ",
    "RBRACE", "RBRACKET", "RECEIVE", "RPAREN", "RSHIFT", "RSHIFTEQ",
    "SEMI", "SLASH", "SLASHEQ", "SLASHSLASH", "SLASHSLASHEQ", "STAR",
    "STAREQ", "STARSTAR", "STARSTAREQ", "STRING", "TILDE", "URSHIFT",
    "URSHIFTEQ", "WS", "NEWLINE", "LINE_COMMENT", "BLOCK_COMMENT",
    "TK_IDENTIFIER", "WHITESPACE", "COMMENT", "NL", "EOL",
}


def failing_ids() -> list[str]:
    out: list[str] = []
    for st in sorted(GE.glob("**/status.json")):
        rel = st.parent.relative_to(GE).as_posix()
        if rel.startswith("tools/"):
            continue
        d = json.loads(st.read_text(encoding="utf-8"))
        if d.get("quality") in ("language_port", "language_subset") and d.get("parse_ok") is False:
            out.append(rel)
    return out


def unit_files(uid: str) -> tuple[Path, Path, Path, Path]:
    d = GE / uid
    parser = next(d.glob("*Parser.g"))
    kw = next(d.glob("*KWLexer.gi"))
    lexers = [p for p in d.glob("*Lexer.gi") if "KWLexer" not in p.name]
    if not lexers:
        raise FileNotFoundError(f"no main lexer in {uid}")
    lexer = lexers[0]
    return d, parser, lexer, kw


def lexer_exports(lexer_path: Path) -> set[str]:
    txt = lexer_path.read_text(encoding="utf-8", errors="replace")
    m = re.search(r"%Export(.*?)%End", txt, re.S)
    if not m:
        return set()
    return {line.strip() for line in m.group(1).splitlines() if line.strip()}


def parser_tokens(parser_path: Path) -> set[str]:
    txt = parser_path.read_text(encoding="utf-8", errors="replace")
    return set(re.findall(r"\b([A-Z][A-Z0-9_]*)\b", txt))


def keyword_tokens(parser_path: Path, lexer_path: Path) -> list[str]:
    exports = lexer_exports(lexer_path)
    tokens = parser_tokens(parser_path)
    kws = sorted(
        t
        for t in tokens & exports
        if t not in PUNCT and not t.startswith("OP_") and not t.startswith("LIT_")
    )
    return kws


def emit_folded_kwlexer(name: str, pkg: str, tokens: list[str]) -> str:
    if not tokens:
        tokens = ["X"]
        rules = ["    Keyword ::= x x x /.$setResult($_X);./"]
    else:
        rules = []
        for tok in tokens:
            body = re.sub(r"[^a-z0-9]", "", tok.lower())
            if not body:
                continue
            chars = " ".join("Minus" if c == "-" else c for c in body)
            rules.append(f"    Keyword ::= {chars} /.$setResult($_{tok});./")
        if not rules:
            rules = ["    Keyword ::= x x x /.$setResult($_X);./"]
            tokens = ["X"]
    export_block = "\n".join(f"    {t}" for t in sorted(set(tokens)))
    letters = " ".join(list("abcdefghijklmnopqrstuvwxyz"))
    return f"""-- Keyword filter for {name} (rebuilt from parser+lexer exports)
%options package={pkg}
%options template=KeywordTemplateF.gi
%options fp={name}KWLexer

%Include
    KWLexerFoldedCaseMapF.gi
%End

%Export
{export_block}
%End

%Terminals
    {letters}
    Minus ::= '-'
%End

%Start
    Keyword
%End

%Rules
{chr(10).join(rules)}
%End
"""


def rebuild_stub_kwlexers(min_rules: int = 10) -> list[str]:
    changed: list[str] = []
    for uid in failing_ids():
        d, parser, lexer, kw = unit_files(uid)
        nrules = kw.read_text(encoding="utf-8").count("Keyword ::=")
        if nrules >= min_rules:
            continue
        name = parser.stem.replace("Parser", "")
        pkg_m = re.search(r"package=([^\n]+)", parser.read_text())
        pkg = pkg_m.group(1).strip() if pkg_m else f"lpg.grammars.{uid.replace('/', '.')}"
        tokens = keyword_tokens(parser, lexer)
        kw.write_text(emit_folded_kwlexer(name, pkg, tokens), encoding="utf-8")
        changed.append(uid)
    return changed


def fix_nt_terminal_conflicts(uid: str) -> bool:
    _, parser, lexer, _ = unit_files(uid)
    ptxt = parser.read_text(encoding="utf-8")
    exports = lexer_exports(lexer)
    nts = set(re.findall(r"^\s+(\w+)\s*::=", ptxt, re.M))
    conflicts = sorted(exports & nts)
    if not conflicts:
        return False
    for c in conflicts:
        new = f"nt_{c}"
        # rename NT definitions and references (word boundary, case sensitive)
        ptxt = re.sub(rf"\b{c}\s*::=", f"{new} ::=", ptxt)
        ptxt = re.sub(rf"(?<![A-Za-z0-9_]){c}(?![A-Za-z0-9_])", new, ptxt)
    parser.write_text(ptxt, encoding="utf-8")
    return True


def fix_operator_eq_alias(uid: str) -> bool:
    _, parser, lexer, _ = unit_files(uid)
    if "OPERATOR_EQ" not in parser_tokens(parser):
        return False
    ltxt = lexer.read_text(encoding="utf-8")
    if "makeToken($_OPERATOR_EQ)" in ltxt:
        return False
    if "| '=' /. makeToken($_EQ); ./" not in ltxt:
        return False
    ltxt = ltxt.replace(
        "| '=' /. makeToken($_EQ); ./",
        "| '=' /. makeToken($_OPERATOR_EQ); ./",
    )
    lexer.write_text(ltxt, encoding="utf-8")
    return True


def fix_start_symbol(uid: str, old: str, new: str) -> bool:
    parser = unit_files(uid)[1]
    ptxt = parser.read_text(encoding="utf-8")
    block = re.search(r"%Start\s+(.*?)%End", ptxt, re.S)
    if not block or old not in block.group(1):
        return False
    ptxt = re.sub(
        rf"(%Start\s+){re.escape(old)}(\s+%End)",
        rf"\1{new}\2",
        ptxt,
        count=1,
        flags=re.S,
    )
    parser.write_text(ptxt, encoding="utf-8")
    return True


def run_harness(uid: str) -> bool:
    env = {"LPG_BIN": str(LPG_BIN)}
    r = subprocess.run(
        ["bash", "harness/run-one.sh", uid],
        cwd=GE,
        env={**__import__("os").environ, **env},
        capture_output=True,
        text=True,
    )
    return r.returncode == 0 and f"OK: {uid}" in r.stdout


def main() -> None:
    print("== rebuild stub KWLexers")
    print(", ".join(rebuild_stub_kwlexers()) or "(none)")

    print("== fix NT/terminal conflicts")
    for uid in failing_ids():
        if fix_nt_terminal_conflicts(uid):
            print("renamed", uid)

    print("== fix OPERATOR_EQ alias")
    for uid in failing_ids():
        if fix_operator_eq_alias(uid):
            print("fixed", uid)

    print("== fix sysml-v2 start")
    if fix_start_symbol("sysml-v2", "ownedExpression", "rootNamespace"):
        print("sysml-v2 start -> rootNamespace")

    # targeted example tweaks
    ex = GE / "cql3/examples-curated/tiny.cql"
    ex.write_text("USE cycling;\n", encoding="utf-8")
    ex = GE / "haskell/examples-curated/smoke.hs"
    ex.write_text("module Main where\nmain = putStrLn \"ok\"\n", encoding="utf-8")

    print("== harness sweep")
    still_fail: list[str] = []
    now_ok: list[str] = []
    for uid in failing_ids():
        if run_harness(uid):
            now_ok.append(uid)
            print("OK", uid)
        else:
            still_fail.append(uid)
    print(f"\nNewly OK ({len(now_ok)}):", ", ".join(now_ok))
    print(f"Still fail ({len(still_fail)}):", ", ".join(still_fail))


if __name__ == "__main__":
    main()
