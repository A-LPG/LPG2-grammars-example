#!/usr/bin/env python3
"""Align KWLexer token names with Parser terminals and wire checkForKeyWord.

Fixes the common regression where KW exports WHILE but the parser expects While
(or KW_INTERFACE / KLET-style names), and dummy filters that never call
checkForKeyWord().
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

PUNCT_OR_META = {
    "LPAREN",
    "RPAREN",
    "LBRACE",
    "RBRACE",
    "LBRACKET",
    "RBRACKET",
    "LANGLE",
    "RANGLE",
    "COMMA",
    "DOT",
    "COLON",
    "SEMI",
    "EQ",
    "PLUS",
    "MINUS",
    "STAR",
    "SLASH",
    "AMP",
    "BAR",
    "HASH",
    "PIPE",
    "ARROW",
    "LT",
    "GT",
    "LTEQ",
    "GTEQ",
    "LTGT",
    "BANG",
    "QUESTION",
    "PERCENT",
    "CARET",
    "TILDE",
    "BACKSLASH",
    "AT",
    "ELLIPSIS",
    "COLONCOLON",
    "EQEQ",
    "NE",
    "LE",
    "GE",
    "ANDAND",
    "OROR",
    "PLUSPLUS",
    "MINUSMINUS",
    "IDENTIFIER",
    "NUMBER",
    "STRING",
    "STRING_LITERAL",
    "INTEGER",
    "INTEGER_LITERAL",
    "DECIMAL_LITERAL",
    "FLOAT",
    "FLOAT_LITERAL",
    "BOOLEAN",
    "BOOL_LITERAL",
    "ERROR_TOKEN",
    "CHAR_LITERAL",
    "CHARACTER_LITERAL",
    "TEXT",
    "EOF",
    "EOF_TOKEN",
    "NEWLINE",
    "WS",
    "COMMENT",
    "Digit",
    "IdStart",
    "LETTER",
    "DIGITS",
    "HEX",
    "OCTAL",
    "REAL",
    "INT",  # often a type keyword — keep if used as keyword; filtered below by spell
}


def spelling_for(tok: str) -> str | None:
    """Return lowercase keyword spelling for a parser terminal name."""
    # Reject operator / literal token shapes — not KW-filter words.
    if tok.endswith(("EQ", "Constant", "Literal", "Literal_", "Literal1")):
        return None
    if tok.endswith(("SHIFT", "SHIFTEQ")) or "EQ" in tok and tok.isupper() and len(tok) > 3:
        if tok not in {"EQ"}:  # bare EQ is punctuation, skipped elsewhere
            if any(tok.endswith(s) for s in ("EQ", "EQEQ")):
                return None
    t = tok
    if t.startswith("KW_") and len(t) > 3:
        t = t[3:]
    elif re.fullmatch(r"K[A-Z][A-Z0-9_]*", t):  # bcpl KLET
        t = t[1:]
    # CamelCase / mixed → split
    if re.search(r"[a-z]", t) and re.search(r"[A-Z]", t):
        parts = re.findall(r"[A-Z]?[a-z]+|[A-Z]+(?![a-z])|[0-9]+", t)
        spell = "".join(parts).lower()
    else:
        spell = t.rstrip("_").lower()
    # Drop digits from spell (Volatile_1 → volatile1 rejected)
    if not re.fullmatch(r"[a-z][a-z]*", spell):
        return None
    if len(spell) < 2 or len(spell) > 24:
        return None
    # Reject names that are clearly not keywords
    if spell.endswith(("constant", "literal")):
        return None
    return spell


def extract_parser_keyword_tokens(parser_g: Path) -> list[tuple[str, str]]:
    text = parser_g.read_text(encoding="utf-8", errors="replace")
    m = re.search(r"%Rules\b(.*?)(?:%End\b|\Z)", text, re.S | re.I)
    body = m.group(1) if m else text
    # LHS nonterminals must never become KW exports.
    lhs = set(re.findall(r"(?m)^\s*([A-Za-z_][\w]*)\s*::=", body))
    # Symbols on RHS only.
    rhs_syms: list[str] = []
    for line in body.splitlines():
        if "::=" not in line:
            # continuation alternatives
            if line.strip().startswith("|"):
                rhs_syms.extend(re.findall(r"\b([A-Z][A-Za-z0-9_]*)\b", line))
            continue
        rhs = line.split("::=", 1)[1]
        rhs_syms.extend(re.findall(r"\b([A-Z][A-Za-z0-9_]*)\b", rhs))
    toks = set(rhs_syms) - lhs
    skip = {
        "EOF",
        "EOF_TOKEN",
        "IDENTIFIER",
        "NUMBER",
        "STRING_LITERAL",
        "INTEGER_LITERAL",
        "DECIMAL_LITERAL",
        "FLOAT_LITERAL",
        "CHARACTER_LITERAL",
        "BOOL_LITERAL",
        "ERROR_TOKEN",
        "NEWLINE",
        "WS",
        "LPAREN",
        "RPAREN",
        "LBRACE",
        "RBRACE",
        "LBRACKET",
        "RBRACKET",
        "LANGLE",
        "RANGLE",
        "COMMA",
        "DOT",
        "COLON",
        "SEMI",
        "EQ",
        "PLUS",
        "MINUS",
        "STAR",
        "SLASH",
        "AMP",
        "BAR",
        "LT",
        "GT",
        "ARROW",
        "ELLIPSIS",
        "QUESTION",
        "Empty",
        "EMPTY",
    }
    counts = {t: len(re.findall(rf"\b{t}\b", body)) for t in toks}
    by_spell: dict[str, list[str]] = {}
    for tok in toks:
        if tok in skip:
            continue
        if tok.endswith("_opt") or tok.endswith("_list") or tok.startswith(
            ("grp_", "seq_", "list_", "opt_", "priority_")
        ):
            continue
        spell = spelling_for(tok)
        if not spell:
            continue
        by_spell.setdefault(spell, []).append(tok)
    pairs: list[tuple[str, str]] = []
    for spell, cands in by_spell.items():
        # Prefer the casing the parser uses most; tie-break prefer mixed case (While > WHILE).
        cands.sort(key=lambda t: (-counts.get(t, 0), t.isupper(), t))
        pairs.append((cands[0], spell))
    return sorted(pairs, key=lambda kv: (-len(kv[1]), kv[0]))


def emit_kwlexer(name: str, pkg: str, kw_pairs: list[tuple[str, str]], folded: bool = False) -> str:
    case_map = "KWLexerFoldedCaseMapF.gi" if folded else "KWLexerLowerCaseMapF.gi"
    exports = "\n".join(f"    {tok}" for tok in sorted({t for t, _ in kw_pairs}))
    # unique by spelling
    by_spell = {}
    for tok, spell in kw_pairs:
        by_spell.setdefault(spell, tok)
    rules = []
    for spell, tok in sorted(by_spell.items(), key=lambda x: (-len(x[0]), x[0])):
        parts = " ".join(ch for ch in spell)
        rules.append(f"    Keyword ::= {parts} /.$setResult($_{tok});./")
    if not rules:
        rules = ["    Keyword ::= x x x /.$setResult($_X);./"]
        exports = "    X"
    return f"""-- Keyword filter for {name} (aligned to parser terminal names)
%options package={pkg}
%options template=KeywordTemplateF.gi
%options fp={name}KWLexer

%Include
    {case_map}
%End

%Export
{exports}
%End

%Terminals
    a b c d e f g h i j k l m n o p q r s t u v w x y z
    _
%End

%Start
    Keyword
%End

%Rules
{chr(10).join(rules)}
%End
"""


def ensure_export(lexer_gi: Path, tokens: list[str]) -> int:
    t = lexer_gi.read_text(encoding="utf-8")
    m = re.search(r"(%Export\s*)(.*?)(%End)", t, re.S)
    if not m:
        return 0
    body = m.group(2)
    existing = set(re.findall(r"[A-Za-z_][\w]*", body))
    add = [tok for tok in tokens if tok not in existing]
    if not add:
        return 0
    lines = [ln for ln in body.splitlines() if ln.strip()]
    for tok in sorted(add):
        lines.append(f"    {tok}")
    lexer_gi.write_text(t[: m.start(2)] + "\n".join(lines) + "\n" + t[m.end(2) :], encoding="utf-8")
    return len(add)


def wire_check_for_keyword(lexer_gi: Path) -> bool:
    t = lexer_gi.read_text(encoding="utf-8")
    if "checkForKeyWord" in t:
        return False
    new = t
    for pat, repl in [
        (r"(\|\s*IDENTIFIER\s*/\.\s*)makeToken\(\$_IDENTIFIER\);(\s*\./)", r"\1checkForKeyWord();\2"),
        (r"(Token\s*::=\s*identifier\s*/\.\s*)makeToken\(\$_IDENTIFIER\);(\s*\./)", r"\1checkForKeyWord();\2"),
        (r"(Token\s*::=\s*IDENTIFIER\s*/\.\s*)makeToken\(\$_IDENTIFIER\);(\s*\./)", r"\1checkForKeyWord();\2"),
        (r"(\|\s*identifier\s*/\.\s*)makeToken\(\$_IDENTIFIER\);(\s*\./)", r"\1checkForKeyWord();\2"),
    ]:
        new2 = re.sub(pat, repl, new)
        if new2 != new:
            new = new2
            break
    else:
        return False
    lexer_gi.write_text(new, encoding="utf-8")
    return True


def alias_lexer_tokens(lexer_gi: Path, parser_g: Path) -> list[str]:
    """Alias common lexer makeToken names to the terminal names the parser uses."""
    pt = parser_g.read_text(encoding="utf-8", errors="replace")
    lt = lexer_gi.read_text(encoding="utf-8")
    # parser terminals (RHS-ish rough set)
    terms = set(re.findall(r"\b([A-Z][A-Za-z0-9_]*)\b", pt))
    aliases: list[tuple[str, str]] = []
    # (lexer_token, parser_token)
    # Do not alias LANGLE/RANGLE/EQ here — $_LT only expands if LT is a real
    # exported lexer terminal; botched aliases break javac ($_LT left literal).
    candidates = [
        ("INTEGER_LITERAL", "IntegerConstant"),
        ("BINARY_LITERAL", "IntegerConstant"),
        ("STRING_LITERAL", "StringLiteral"),
        ("STRING_LITERAL", "STRING_LITERAL"),
        ("STRING", "STRING_LITERAL"),
        ("STRING", "StringLiteral"),
        ("CHARACTER_LITERAL", "CharacterConstant"),
        ("CHAR_LITERAL", "CharacterConstant"),
        ("FLOAT_LITERAL", "FloatingConstant"),
        ("NUMBER", "IntegerConstant"),
        ("NUMBER", "DecimalLiteral"),
        ("NUMBER", "DECIMAL_LITERAL"),
    ]
    changed = []
    for lex_tok, prs_tok in candidates:
        if prs_tok not in terms:
            continue
        src = f"makeToken($_{lex_tok})"
        dst = f"makeToken($_{prs_tok})"
        if src in lt and dst not in lt.replace(dst, ""):  # naive
            if src != dst and src in lt:
                lt = lt.replace(src, dst)
                changed.append(f"{lex_tok}->{prs_tok}")
                aliases.append((lex_tok, prs_tok))
    # ensure exports for parser-facing names
    for _, prs_tok in aliases:
        if prs_tok not in lt:
            lt = re.sub(r"(%Export\s*)", rf"\1    {prs_tok}\n", lt, count=1)
    # LT/GT exports when aliased from LANGLE
    for tok in ("LT", "GT", "IntegerConstant", "StringLiteral", "STRING_LITERAL", "CharacterConstant"):
        if tok in terms and f"    {tok}" not in re.search(r"%Export\s*(.*?)%End", lt, re.S).group(1):
            if f"makeToken($_{tok})" in lt or any(a[1] == tok for a in aliases):
                lt = re.sub(r"(%Export\s*)", rf"\1    {tok}\n", lt, count=1)
                changed.append(f"export:{tok}")
    if changed:
        lexer_gi.write_text(lt, encoding="utf-8")
    return changed


def _is_dummy_kw(kw_path: Path) -> bool:
    if not kw_path.is_file():
        return True
    t = kw_path.read_text(encoding="utf-8", errors="replace")
    return "Dummy keyword" in t or "Keyword ::= x x x" in t


def fix_unit(uid: str) -> str:
    unit = ROOT / uid
    h = json.loads((unit / "harness.json").read_text(encoding="utf-8"))
    lexer_name = h["lexer"]
    name = lexer_name[: -len("Lexer")] if lexer_name.endswith("Lexer") else lexer_name
    pkg = h["package"]
    parser = unit / f"{h['parser']}.g"
    if not parser.is_file():
        parser = next(unit.glob("*Parser.g"))
    lexer = unit / f"{lexer_name}.gi"
    if not lexer.is_file():
        lexer = next(p for p in unit.glob("*Lexer.gi") if "KW" not in p.name)
    kw_path = unit / f"{name}KWLexer.gi"
    pairs = extract_parser_keyword_tokens(parser)
    rebuilt = False
    if _is_dummy_kw(kw_path) and pairs:
        kw_path.write_text(emit_kwlexer(name, pkg, pairs, folded=False), encoding="utf-8")
        rebuilt = True
        lt = lexer.read_text(encoding="utf-8")
        if f"filter={name}KWLexer.gi" not in lt:
            if re.search(r"%options filter=\S+", lt):
                lt = re.sub(r"%options filter=\S+", f"%options filter={name}KWLexer.gi", lt)
            else:
                lt = lt.replace(
                    "%options template=LexerTemplateF.gi",
                    f"%options template=LexerTemplateF.gi\n%options filter={name}KWLexer.gi",
                )
            lexer.write_text(lt, encoding="utf-8")
        if f"$kw_lexer_class /.${name}KWLexer./" not in lexer.read_text(encoding="utf-8"):
            lt = lexer.read_text(encoding="utf-8")
            if "$kw_lexer_class" not in lt:
                if "%Define" in lt:
                    lt = lt.replace("%Define\n", f"%Define\n    $kw_lexer_class /.${name}KWLexer./\n", 1)
                else:
                    lt = re.sub(
                        r"(%options[^\n]*\n(?:%options[^\n]*\n)*)",
                        rf"\1\n%Define\n    $kw_lexer_class /.${name}KWLexer./\n%End\n",
                        lt,
                        count=1,
                    )
                lexer.write_text(lt, encoding="utf-8")
    # Align existing non-dummy KW casing: WHILE → While when parser uses While.
    casing_fixed = False
    if kw_path.is_file() and pairs and not _is_dummy_kw(kw_path):
        kt = kw_path.read_text(encoding="utf-8")
        orig = kt
        for tok, _spell in pairs:
            up = tok.upper()
            if tok != up and f"$_{up}" in kt and f"$_{tok}" not in kt:
                kt = kt.replace(f"$_{up}", f"$_{tok}")
                kt = re.sub(rf"(?m)^\s+{re.escape(up)}\s*$", f"    {tok}", kt)
        if kt != orig:
            kw_path.write_text(kt, encoding="utf-8")
            casing_fixed = True
    added = ensure_export(lexer, [t for t, _ in pairs]) if pairs else 0
    wired = wire_check_for_keyword(lexer)
    aliased = alias_lexer_tokens(lexer, parser)
    return (
        f"OK {uid}: pairs={len(pairs)} rebuilt_kw={rebuilt} "
        f"casing={casing_fixed} exports+={added} wire={wired} alias={aliased}"
    )


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("ids", nargs="*")
    ap.add_argument("--from-fail-list")
    args = ap.parse_args()
    ids = list(args.ids)
    if args.from_fail_list:
        for line in Path(args.from_fail_list).read_text(encoding="utf-8").splitlines():
            if line.startswith("FAIL "):
                ids.append(line.split(" ", 1)[1].strip())
    seen = set()
    uniq = []
    for i in ids:
        if i not in seen:
            seen.add(i)
            uniq.append(i)
    for uid in uniq:
        try:
            print(fix_unit(uid))
        except Exception as e:
            print(f"ERR {uid}: {e}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
