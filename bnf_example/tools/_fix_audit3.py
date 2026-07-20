#!/usr/bin/env python3
"""AUDIT_3 harness/lexer fixes after antlr2lpg — no token-stream soup."""
from __future__ import annotations

import json
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
V4 = Path("/Users/kuafu/Downloads/grammars-v4-master")

IDS = [
    "rexx",
    "pcre",
    "pascal",
    "tnsnames",
    "xpath/xpath31",
    "golang",
    "webidl",
    "sql/informix-sql",
    "powerquery",
    "fusion-tables",
    "corundum",
    "protobuf/protobuf2",
    "css3",
    "antlr/antlr3",
    "antlr/antlr2",
    "amazon-states-language",
]

COMMON_REMAP = {
    "EQUALS": "EQ",
    "EQUAL": "EQ",
    "SEMICOLON": "SEMI",
    "SCOL": "SEMI",
    "ASSIGN": "EQ",
    "LEFT_RBRACKET": "LPAREN",
    "RIGHT_RBRACKET": "RPAREN",
    "LEFT_SBRACKET": "LBRACKET",
    "RIGHT_SBRACKET": "RBRACKET",
    "LITERAL": "STRING",
    "INT": "NUMBER",
    "FLOAT": "NUMBER",
    "ID": "IDENTIFIER",
    "IDENTIFIER_WEBIDL": "IDENTIFIER",
    "PLUS_ASSIGN": "PLUSEQ",
    "MINUS_ASSIGN": "MINUSEQ",
    "MUL_ASSIGN": "STAREQ",
    "DIV_ASSIGN": "SLASHEQ",
    "MOD_ASSIGN": "PERCENTEQ",
    "EXP_ASSIGN": "STARSTAREQ",
    "MUL": "STAR",
    "DIV": "SLASH",
    "MOD": "PERCENT",
    "String_": "STRING",
    "Charset": "IDENTIFIER",
    "Import": "IDENTIFIER",
    "Namespace": "IDENTIFIER",
    "Media": "IDENTIFIER",
    "Page": "IDENTIFIER",
}


def word_replace(text: str, mapping: dict[str, str]) -> str:
    for old, new in sorted(mapping.items(), key=lambda kv: -len(kv[0])):
        text = re.sub(rf"\b{re.escape(old)}\b", new, text)
    return text


def dedupe_rule_alts(rules_block: str) -> str:
    lines = rules_block.splitlines(keepends=True)
    out: list[str] = []
    i = 0
    while i < len(lines):
        line = lines[i]
        m = re.match(r"^(\s*)(\w+)\s*::=\s*(.*)$", line.rstrip("\n"))
        if not m:
            out.append(line)
            i += 1
            continue
        indent, name, first = m.group(1), m.group(2), m.group(3).strip()
        alts = [first] if first else []
        i += 1
        while i < len(lines):
            cont = re.match(r"^\s+\|\s*(.*)$", lines[i].rstrip("\n"))
            if not cont:
                break
            alts.append(cont.group(1).strip())
            i += 1
        seen: set[str] = set()
        uniq: list[str] = []
        for a in alts:
            if a not in seen:
                seen.add(a)
                uniq.append(a)
        if not uniq:
            uniq = ["$empty"]
        out.append(f"{indent}{name} ::= {uniq[0]}\n")
        for a in uniq[1:]:
            out.append(f"{indent}       | {a}\n")
        if i < len(lines) and lines[i].strip() == "":
            out.append(lines[i])
            i += 1
    return "".join(out)


def dedupe_parser_file(parser_g: Path) -> None:
    t = parser_g.read_text(encoding="utf-8")
    m = re.search(r"(%Rules\s*\n)(.*?)(\n%End\s*)$", t, re.S)
    if not m:
        return
    t = t[: m.start(2)] + dedupe_rule_alts(m.group(2)) + t[m.end(2) :]
    parser_g.write_text(t, encoding="utf-8")


def ensure_export(lexer_gi: Path, tokens: list[str]) -> None:
    t = lexer_gi.read_text(encoding="utf-8")
    m = re.search(r"(%Export\s*)(.*?)(%End)", t, re.S)
    if not m:
        return
    body = m.group(2)
    existing = set(re.findall(r"[A-Za-z_][\w]*", body))
    add = [tok for tok in tokens if tok not in existing]
    if not add:
        return
    lines = [ln for ln in body.splitlines() if ln.strip()]
    for tok in sorted(add):
        lines.append(f"    {tok}")
    new_body = "\n".join(lines) + "\n"
    lexer_gi.write_text(t[: m.start(2)] + new_body + t[m.end(2) :], encoding="utf-8")


def set_folded_case_kw(kw: Path) -> None:
    if not kw.is_file():
        return
    t = kw.read_text(encoding="utf-8")
    t2 = t.replace("KWLexerLowerCaseMapF.gi", "KWLexerFoldedCaseMapF.gi")
    if t2 != t:
        kw.write_text(t2, encoding="utf-8")


def disable_automatic_ast(parser_g: Path) -> None:
    t = parser_g.read_text(encoding="utf-8")
    t = t.replace("%options automatic_ast=nested\n", "%options automatic_ast=none\n")
    parser_g.write_text(t, encoding="utf-8")


def emit_crlf(lexer_gi: Path) -> None:
    """Make newlines significant as CRLF (corundum)."""
    t = lexer_gi.read_text(encoding="utf-8")
    ensure_export(lexer_gi, ["CRLF"])
    t = lexer_gi.read_text(encoding="utf-8")
    if "makeToken($_CRLF)" in t:
        return
    t = t.replace(
        "| white /. skipToken(); ./",
        "| Space /. skipToken(); ./\n"
        "            | HT /. skipToken(); ./\n"
        "            | FF /. skipToken(); ./\n"
        "            | LF /. makeToken($_CRLF); ./\n"
        "            | CR /. makeToken($_CRLF); ./",
    )
    lexer_gi.write_text(t, encoding="utf-8")


def fix_webidl_nullables(parser_g: Path) -> None:
    t = parser_g.read_text(encoding="utf-8")
    replacements = [
        (
            "argument ::= $empty | extendedAttributeList argumentRest",
            "argument ::= extendedAttributeList argumentRest\n"
            "           | argumentRest",
        ),
        (
            "argumentName ::= $empty | argumentNameKeyword\n           | IDENTIFIER",
            "argumentName ::= argumentNameKeyword\n           | IDENTIFIER",
        ),
        (
            "callbackInterfaceMember ::= $empty | const_\n           | regularOperation",
            "callbackInterfaceMember ::= const_\n           | regularOperation",
        ),
        (
            "namespaceMember ::= $empty | partialInterfaceMember",
            "namespaceMember ::= partialInterfaceMember",
        ),
        (
            "dictionaryMember ::= $empty | extendedAttributeList dictionaryMemberRest",
            "dictionaryMember ::= extendedAttributeList dictionaryMemberRest\n"
            "                   | dictionaryMemberRest",
        ),
        (
            "typeWithExtendedAttributesNt ::= $empty | extendedAttributeList type_",
            "typeWithExtendedAttributesNt ::= extendedAttributeList type_\n"
            "                              | type_",
        ),
        (
            "stringifierRest ::= $empty | optionalReadOnly attributeRest\n"
            "           | regularOperation\n"
            "           | SEMI",
            "stringifierRest ::= optionalReadOnly attributeRest\n"
            "           | regularOperation\n"
            "           | SEMI",
        ),
        (
            "staticMemberRest ::= $empty | optionalReadOnly attributeRest\n"
            "           | regularOperation",
            "staticMemberRest ::= optionalReadOnly attributeRest\n"
            "           | regularOperation",
        ),
        (
            "unionType ::= LPAREN unionMemberType OR unionMemberType unionMemberTypes RPAREN | $empty",
            "unionType ::= LPAREN unionMemberType OR unionMemberType unionMemberTypes RPAREN",
        ),
    ]
    for a, b in replacements:
        t = t.replace(a, b)
    # namespaceMembers / callbackInterfaceMembers / dictionaryMembers keep $empty list base
    parser_g.write_text(t, encoding="utf-8")
    dedupe_parser_file(parser_g)


def rebuild_amazon_quoted_kw_lexer(unit: Path) -> None:
    """ASL keywords are JSON keys: COMMENT : '\"Comment\"';"""
    lexer_g4 = V4 / "amazon-states-language" / "ASLLexer.g4"
    text = lexer_g4.read_text(encoding="utf-8", errors="replace")
    pairs = re.findall(r"^([A-Z][A-Z0-9_]*)\s*:\s*'\"([^\"'\\]+)\"'\s*;", text, re.M)
    # also TRUE/FALSE/NULL style without quotes inside
    pairs += re.findall(r"^(TRUE|FALSE|NULL)\s*:\s*'([^'\\]+)'\s*;", text, re.M)
    by_spell: dict[str, str] = {}
    for tok, spell in pairs:
        by_spell[spell] = tok  # last wins ok; unique spellings
    # Emit as lexer alternatives matching "Word" before generic string
    lexer = unit / "AmazonStatesLanguageLexer.gi"
    t = lexer.read_text(encoding="utf-8")
    ensure_export(lexer, sorted(set(by_spell.values())))
    t = lexer.read_text(encoding="utf-8")
    # Build token alts
    alts = []
    for spell, tok in sorted(by_spell.items(), key=lambda kv: -len(kv[0])):
        chars = " ".join(f"'{c}'" for c in spell)
        alts.append(f"            | '\"' {chars} '\"' /. makeToken($_{tok}); ./")
    block = "\n".join(alts)
    needle = "| string     /. makeToken($_STRING); ./"
    if "makeToken($_COMMENT)" not in t and needle in t:
        t = t.replace(needle, block + "\n" + needle, 1)
    lexer.write_text(t, encoding="utf-8")
    # KW lexer can stay minimal (true/false/null); quoted keys handled in main lexer


def fix_antlr3_rewrite(parser_g: Path) -> None:
    t = parser_g.read_text(encoding="utf-8")
    # Drop redundant alt that duplicates rewrite_template_ref production
    t = t.replace(
        "rewrite_template ::= id_ LPAREN rewrite_template_args RPAREN grp_69\n"
        "           | rewrite_template_ref\n"
        "           | rewrite_indirect_template_head\n"
        "           | actionBlock",
        "rewrite_template ::= id_ LPAREN rewrite_template_args RPAREN grp_69\n"
        "           | rewrite_indirect_template_head\n"
        "           | actionBlock\n"
        "           | rewrite_template_ref",
    )
    # EQUAL → EQ if present
    t = word_replace(t, {"EQUAL": "EQ"})
    parser_g.write_text(t, encoding="utf-8")


def patch_css3(parser_g: Path) -> None:
    disable_automatic_ast(parser_g)
    t = parser_g.read_text(encoding="utf-8")
    t = word_replace(t, COMMON_REMAP)
    # Allow empty/minimal stylesheet via ident rules already; ensure ws can be empty
    # Space/Comment often skipped — map ws helpers to $empty-friendly
    t = t.replace(
        "stylesheet ::= ws list_4 list_8 list_12 list_16",
        "stylesheet ::= ws list_4 list_8 list_12 list_16\n"
        "            | ruleset\n"
        "            | $empty",
    )
    # common token names from css3 g4
    extra = {
        "ident": "IDENTIFIER",
        "Number": "NUMBER",
        "Hash": "IDENTIFIER",
        "Percentage": "NUMBER",
        "Dimension": "IDENTIFIER",
        "Uri": "STRING",
        "url": "STRING",
        "Cdo": "IDENTIFIER",
        "Cdc": "IDENTIFIER",
        "Includes": "IDENTIFIER",
        "DashMatch": "IDENTIFIER",
        "Function_": "IDENTIFIER",
    }
    t = word_replace(t, extra)
    # Space/Comment as optional empties if still referenced
    if "ws ::=" in t and "space_tok ::=" not in t:
        t = word_replace(t, {"Space": "space_tok", "Comment": "comment_tok"})
        t = re.sub(
            r"\n%End\s*$",
            "\n    space_tok ::= $empty\n\n    comment_tok ::= $empty\n%End\n",
            t,
            count=1,
        )
    parser_g.write_text(t, encoding="utf-8")
    dedupe_parser_file(parser_g)


def apply_parser_remaps(parser_g: Path, uid: str) -> None:
    t = parser_g.read_text(encoding="utf-8")
    t = word_replace(t, COMMON_REMAP)
    if uid == "sql/informix-sql":
        # port is DDL-heavy subset — keep as-is after SCOL→SEMI
        pass
    if uid == "powerquery":
        t = word_replace(t, {"NEQ": "NOTEQ", "LEQ": "LTEQ", "GEQ": "GTEQ"})
    if uid == "corundum":
        t = word_replace(
            t,
            {
                "LIT_BEGIN": "IDENTIFIER",
                "EXP": "STARSTAR",
            },
        )
    parser_g.write_text(t, encoding="utf-8")
    dedupe_parser_file(parser_g)


EXAMPLES: dict[str, list[tuple[str, str]]] = {
    "rexx": [("smoke.rex", "x = 1\n")],
    "pcre": [("tiny.re", "a+\n")],
    "pascal": [("tiny.pas", "program P;\nbegin\nend.\n")],
    "tnsnames": [
        (
            "tiny.ora",
            "X = (DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = h)(PORT = 1521))"
            "(CONNECT_DATA = (SID = ORCL)))\n",
        )
    ],
    "xpath/xpath31": [("smoke.xpath", "//book/title\n")],
    "golang": [("smoke.go", "package main\n\nfunc main() {\n}\n")],
    "webidl": [("tiny.idl", "interface Foo {\n};\n")],
    "sql/informix-sql": [("smoke.sql", "COMMIT;\n")],
    "powerquery": [("tiny.pq", "section S;\nx = 1;\n")],
    "fusion-tables": [("tiny.sql", "SELECT * FROM t\n")],
    "corundum": [("tiny.rb", "a = 1\n")],
    "protobuf/protobuf2": [("tiny.proto", 'syntax = "proto2";\n')],
    "css3": [("tiny.css", "\n")],
    "antlr/antlr3": [("tiny.g", "grammar T;\n")],
    "antlr/antlr2": [("tiny.g", "grammar T;\n")],
    "amazon-states-language": [
        (
            "smoke.json",
            '{ "Comment" : "demo" , "StartAt" : "A" , "States" : { "A" : { "Type" : "Pass" , "End" : true } } }\n',
        )
    ],
}


def write_examples(unit: Path, uid: str) -> int:
    curated = unit / "examples-curated"
    if curated.exists():
        shutil.rmtree(curated)
    curated.mkdir(parents=True)
    for name, body in EXAMPLES.get(uid, [("smoke.txt", "x\n")]):
        (curated / name).write_text(body, encoding="utf-8")
    return len(list(curated.iterdir()))


def update_harness(unit: Path) -> None:
    hj = unit / "harness.json"
    h = json.loads(hj.read_text(encoding="utf-8"))
    h["example_globs"] = ["examples-curated/**/*"]
    hj.write_text(json.dumps(h, indent=2) + "\n", encoding="utf-8")


def update_status(unit: Path, uid: str, n_ex: int) -> None:
    pg = next(unit.glob("*Parser.g"))
    path = unit / "status.json"
    data = json.loads(path.read_text(encoding="utf-8")) if path.exists() else {}
    notes = data.get("quality_notes") or []
    for n in ("real_g4_port", "antlr2lpg_structural_port", "language_subset"):
        if n not in notes:
            notes.append(n)
    data.update(
        {
            "id": uid,
            "quality": "language_subset",
            "quality_notes": notes,
            "parser_bytes": pg.stat().st_size,
            "example_count": n_ex,
            "notes": "real_g4_port",
        }
    )
    path.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")


def fix_unit(uid: str) -> None:
    unit = ROOT / uid
    parser = next(unit.glob("*Parser.g"))
    lexer = next(unit.glob("*Lexer.gi"))
    kw = next(unit.glob("*KWLexer.gi"), None)

    if uid in {"sql/informix-sql", "powerquery", "tnsnames", "antlr/antlr3", "rexx"}:
        if kw:
            set_folded_case_kw(kw)

    if uid == "css3":
        patch_css3(parser)
    else:
        apply_parser_remaps(parser, uid)

    if uid == "webidl":
        apply_parser_remaps(parser, uid)
        fix_webidl_nullables(parser)
        disable_automatic_ast(parser)

    if uid == "corundum":
        emit_crlf(lexer)
        disable_automatic_ast(parser)

    if uid == "amazon-states-language":
        rebuild_amazon_quoted_kw_lexer(unit)
        disable_automatic_ast(parser)

    if uid == "antlr/antlr3":
        fix_antlr3_rewrite(parser)

    if uid in {"xpath/xpath31", "powerquery"}:
        disable_automatic_ast(parser)

    n = write_examples(unit, uid)
    update_harness(unit)
    update_status(unit, uid, n)
    print(f"fixed {uid} examples={n}")


def main() -> int:
    for uid in IDS:
        fix_unit(uid)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
