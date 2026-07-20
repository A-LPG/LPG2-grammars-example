#!/usr/bin/env python3
"""Align CorundumLexer token names with CorundumParser (ID, ASSIGN, CRLF, etc.)."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEXER = ROOT / "corundum" / "CorundumLexer.gi"
KW = ROOT / "corundum" / "CorundumKWLexer.gi"
PARSER = ROOT / "corundum" / "CorundumParser.g"


def patch_kw_folded() -> None:
    t = KW.read_text(encoding="utf-8")
    if "KWLexerFoldedCaseMapF" in t:
        return
    t = t.replace("KWLexerLowerCaseMapF.gi", "KWLexerFoldedCaseMapF.gi")
    KW.write_text(t, encoding="utf-8")


def patch_lexer() -> None:
    t = LEXER.read_text(encoding="utf-8")
    if "checkForKeyWord($_ID)" in t and "makeToken($_ASSIGN)" in t:
        patch_crlf(t)
        return

    t = t.replace(
        "Token ::= identifier /. checkForKeyWord(); ./",
        "Token ::= LF /. makeToken($_CRLF); ./\n"
        "            | CR LF /. makeToken($_CRLF); ./\n"
        "            | CR /. makeToken($_CRLF); ./\n"
        "            | DollarSign identifier /. makeToken($_ID_GLOBAL); ./\n"
        "            | identifier QuestionMark /. makeToken($_ID_FUNCTION); ./\n"
        "            | identifier /. checkForKeyWord($_ID); ./",
        1,
    )
    t = t.replace(
        "| number     /. makeToken($_NUMBER); ./",
        "| float_number /. makeToken($_FLOAT); ./\n"
        "            | int_number /. makeToken($_INT); ./",
        1,
    )
    t = t.replace(
        "| string     /. makeToken($_STRING); ./",
        "| string     /. makeToken($_LITERAL); ./",
        1,
    )
    t = re.sub(
        r"\| '\(' /\. makeToken\(\$_LPAREN\); \./",
        "| '(' /. makeToken($_LEFT_RBRACKET); ./",
        t,
    )
    t = re.sub(
        r"\| '\)' /\. makeToken\(\$_RPAREN\); \./",
        "| ')' /. makeToken($_RIGHT_RBRACKET); ./",
        t,
    )
    t = re.sub(
        r"\| '\[' /\. makeToken\(\$_LBRACKET\); \./",
        "| '[' /. makeToken($_LEFT_SBRACKET); ./",
        t,
    )
    t = re.sub(
        r"\| '\]' /\. makeToken\(\$_RBRACKET\); \./",
        "| ']' /. makeToken($_RIGHT_SBRACKET); ./",
        t,
    )
    t = re.sub(
        r"\| ';' /\. makeToken\(\$_SEMI\); \./",
        "| ';' /. makeToken($_SEMICOLON); ./",
        t,
    )
    # Single '=' is ASSIGN; '==' stays EQUAL via earlier EQEQ rule.
    t = re.sub(
        r"\| '=' /\. makeToken\(\$_EQ\); \./",
        "| '=' /. makeToken($_ASSIGN); ./",
        t,
    )
    t = re.sub(r"WSChar -> Space \| LF \| CR \| HT \| FF", "WSChar -> Space | HT | FF", t)

    if "int_number ::=" not in t:
        insert = """
    int_number ::= Digit
                 | int_number Digit
                 | int_number '_' Digit

    float_number ::= int_number '.' Digits
                   | '.' Digits
"""
        idx = t.rfind("\n%End")
        t = t[:idx] + insert + t[idx:]

    LEXER.write_text(t, encoding="utf-8")


def patch_crlf(t: str | None = None) -> None:
    if t is None:
        t = LEXER.read_text(encoding="utf-8")
    if "makeToken($_CRLF)" in t.split("Token ::=")[1].split("LineComment")[0]:
        return
    LEXER.write_text(t, encoding="utf-8")


def patch_parser_terminator_opt() -> None:
    t = PARSER.read_text(encoding="utf-8")
    if "terminator_opt" in t:
        return
    t = t.replace(
        "    expression_list ::= expression terminator\n"
        "           | expression_list expression terminator\n"
        "           | terminator\n",
        "    expression_list ::= expression terminator_opt\n"
        "           | expression_list expression terminator_opt\n"
        "           | terminator_opt\n\n"
        "    terminator_opt ::= terminator | $empty\n",
        1,
    )
    PARSER.write_text(t, encoding="utf-8")


def main() -> None:
    patch_kw_folded()
    patch_lexer()
    patch_parser_terminator_opt()
    print("patched corundum lexer/parser")


if __name__ == "__main__":
    main()
