#!/usr/bin/env python3
"""Patch asm lexers: EOL, MASMDIRECTIVE (.word), RISCV XREGS/FREGS keywords."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

XREGS = [
    "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0", "s1",
    "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7", "s2", "s3", "s4", "s5",
    "s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6",
]
FREGS = [
    "ft0", "ft1", "ft2", "ft3", "ft4", "ft5", "ft6", "ft7", "fs0", "fs1",
    "fa0", "fa1", "fa2", "fa3", "fa4", "fa5", "fa6", "fa7", "fs2", "fs3",
    "fs4", "fs5", "fs6", "fs7", "fs8", "fs9", "fs10", "fs11", "ft8", "ft9",
    "ft10", "ft11",
]

DIR_HELPERS = """
    dirBody -> Letter | dirBody Letter | dirBody Digit
    name_token -> UpperCaseLetter nameRest | '_' nameRest
    nameRest -> $empty | nameRest nameChar
    nameChar -> UpperCaseLetter | Digit | '_' | '.' | '@'
"""


def add_exports(lexer: Path, tokens: list[str]) -> None:
    t = lexer.read_text(encoding="utf-8")
    m = re.search(r"(%Export\s*)(.*?)(%End)", t, re.S)
    if not m:
        return
    existing = set(re.findall(r"[A-Za-z_][\w]*", m.group(2)))
    lines = [ln for ln in m.group(2).splitlines() if ln.strip()]
    for tok in tokens:
        if tok not in existing:
            lines.append(f"    {tok}")
    lexer.write_text(t[: m.start(2)] + "\n".join(lines) + "\n" + t[m.end(2) :], encoding="utf-8")


def patch_eol(lexer: Path) -> None:
    t = lexer.read_text(encoding="utf-8")
    if "makeToken($_EOL)" in t:
        return
    add_exports(lexer, ["EOL"])
    t = lexer.read_text(encoding="utf-8")
    t = t.replace(
        "Token ::= identifier /. checkForKeyWord(); ./",
        "Token ::= LF /. makeToken($_EOL); ./\n"
        "            | CR /. makeToken($_EOL); ./\n"
        "            | identifier /. checkForKeyWord(); ./",
        1,
    )
    t = re.sub(r"WSChar -> Space \| LF \| CR \| HT \| FF", "WSChar -> Space | HT | FF", t)
    lexer.write_text(t, encoding="utf-8")


def patch_masm_directive(lexer: Path) -> None:
    t = lexer.read_text(encoding="utf-8")
    if "makeToken($_MASMDIRECTIVE)" in t:
        patch_eol(lexer)
        return
    add_exports(lexer, ["MASMDIRECTIVE", "NAME", "EOL"])
    t = lexer.read_text(encoding="utf-8")
    t = t.replace(
        "Token ::= identifier /. checkForKeyWord(); ./",
        "Token ::= LF /. makeToken($_EOL); ./\n"
        "            | CR /. makeToken($_EOL); ./\n"
        "            | '.' dirBody /. makeToken($_MASMDIRECTIVE); ./\n"
        "            | name_token /. makeToken($_NAME); ./\n"
        "            | identifier /. checkForKeyWord(); ./",
        1,
    )
    if "dirBody ->" not in t:
        idx = t.rfind("\n%End")
        t = t[:idx] + DIR_HELPERS + t[idx:]
    t = re.sub(r"WSChar -> Space \| LF \| CR \| HT \| FF", "WSChar -> Space | HT | FF", t)
    lexer.write_text(t, encoding="utf-8")


def patch_kw_registers(kw: Path, token: str, words: list[str]) -> None:
    t = kw.read_text(encoding="utf-8")
    t = t.replace("KWLexerLowerCaseMapF.gi", "KWLexerFoldedCaseMapF.gi")
    m = re.search(r"(%Export\s*)(.*?)(%End)", t, re.S)
    if m:
        lines = [ln for ln in m.group(2).splitlines() if ln.strip()]
        if token not in "".join(lines):
            lines.append(f"    {token}")
        t = t[: m.start(2)] + "\n".join(lines) + "\n" + t[m.end(2) :]
    rules = []
    for w in sorted(set(words), key=lambda x: (-len(x), x)):
        parts = " ".join(c for c in w.lower())
        line = f"    Keyword ::= {parts} /.$setResult($_{token});./"
        if line not in t:
            rules.append(line)
    if rules:
        idx = t.rfind("\n%End")
        t = t[:idx] + "\n" + "\n".join(rules) + t[idx:]
    kw.write_text(t, encoding="utf-8")


def set_ast_none(parser: Path) -> None:
    t = parser.read_text(encoding="utf-8")
    t = t.replace("%options automatic_ast=nested", "%options automatic_ast=none")
    parser.write_text(t, encoding="utf-8")


def fold_kw(kw: Path) -> None:
    t = kw.read_text(encoding="utf-8")
    t = t.replace("KWLexerLowerCaseMapF.gi", "KWLexerFoldedCaseMapF.gi")
    kw.write_text(t, encoding="utf-8")


def unit_lexer_paths(uid: str) -> tuple[Path, Path]:
    u = ROOT / uid
    h = __import__("json").loads((u / "harness.json").read_text(encoding="utf-8"))
    base = h["lexer"]
    lex = u / f"{base}.gi"
    kw = u / f"{base.replace('Lexer', 'KWLexer')}.gi"
    if not kw.is_file():
        kw = next(u.glob("*KWLexer.gi"))
    return lex, kw


def main() -> None:
    for uid in ("asm/asmMASM", "asm/ptx/ptx-isa-1.0"):
        lex, kw = unit_lexer_paths(uid)
        patch_masm_directive(lex)
        fold_kw(kw)

    lex, kw = unit_lexer_paths("asm/asmRISCV")
    patch_eol(lex)
    patch_kw_registers(kw, "XREGS", XREGS)
    patch_kw_registers(kw, "FREGS", FREGS)

    lex, _ = unit_lexer_paths("asm/pdp7")
    patch_eol(lex)
    set_ast_none(ROOT / "asm/nasm/AsmNasmParser.g")


if __name__ == "__main__":
    main()
