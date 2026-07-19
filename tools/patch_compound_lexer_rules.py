#!/usr/bin/env python3
"""Insert missing g4 literal token rules into LPG *Lexer.gi Token productions."""
from __future__ import annotations

import re
import sys
from pathlib import Path

GE = Path(__file__).resolve().parents[1]
V4 = Path("/Users/kuafu/Downloads/grammars-v4-master")


def g4_literal_rules(g4_paths: list[Path]) -> list[tuple[str, str]]:
    out: list[tuple[str, str]] = []
    for p in g4_paths:
        if not p.is_file():
            continue
        text = p.read_text(encoding="utf-8", errors="replace")
        # TOKEN: '@import'; or TOKEN : 'END' WS 'SUB';
        for m in re.finditer(
            r"^([A-Z][A-Z0-9_]*)\s*:\s*(.+?)\s*;",
            text,
            flags=re.M,
        ):
            tok, body = m.group(1), m.group(2)
            if "->" in body:
                body = body.split("->", 1)[0].strip()
            if "|" in body and not body.strip().startswith("("):
                alts = [a.strip() for a in body.split("|")]
            else:
                alts = [body.strip()]
            for alt in alts:
                alt = alt.strip()
                if alt.startswith("(") and alt.endswith(")"):
                    alt = alt[1:-1].strip()
                # strip SPACES? / WS fragments
                alt = re.sub(r"\s+SPACES?\??", "", alt)
                alt = re.sub(r"\s+WS\b", " ", alt)
                # single quoted literal
                m2 = re.match(r"'((?:\\'|[^'])*)'\s*$", alt)
                if m2:
                    lit = m2.group(1).replace("\\'", "'")
                    out.append((tok, lit))
                    continue
                # 'END' WS 'SUB' style
                parts = re.findall(r"'((?:\\'|[^'])*)'|WS\b", alt)
                if parts and all(isinstance(x, str) for x in parts):
                    chars: list[str] = []
                    for part in parts:
                        if part == "WS":
                            chars.append("__WS__")
                        else:
                            for ch in part.replace("\\'", "'"):
                                chars.append(ch)
                    out.append((tok, "".join(chars)))
    # dedupe, longest first
    seen: set[tuple[str, str]] = set()
    uniq: list[tuple[str, str]] = []
    for pair in sorted(out, key=lambda x: (-len(x[1]), x)):
        if pair not in seen:
            seen.add(pair)
            uniq.append(pair)
    return uniq


def lpg_char_pattern(lit: str) -> str:
    parts: list[str] = []
    i = 0
    while i < len(lit):
        if lit.startswith("__WS__", i):
            parts.append("white")
            i += len("__WS__")
            continue
        ch = lit[i]
        if ch == " ":
            parts.append("Space")
        elif ch == "\t":
            parts.append("HT")
        elif ch == "\n":
            parts.append("LF")
        elif ch == "\r":
            parts.append("CR")
        elif ch == "'":
            parts.append("SingleQuote")
        elif ch == "\\":
            parts.append("BackSlash")
        elif ch == '"':
            parts.append("DoubleQuote")
        elif ch.isalpha():
            parts.append(f"'{ch.lower()}'" if ch.islower() else f"'{ch}'")
        elif ch.isdigit():
            parts.append(f"'{ch}'")
        else:
            esc = {"{": "'{'", "}": "'}'", "[": "'['", "]": "']'", "(": "'('", ")": "')'",
                   ".": "'.'", ",": "','", ":": "Colon", ";": "SemiColon", "#": "Sharp",
                   "$": "DollarSign", "@": "AtSign", "&": "Ampersand", "|": "VerticalBar",
                   "^": "Caret", "~": "Tilde", "`": "BackQuote", "%": "Percent",
                   "+": "Plus", "-": "Minus", "*": "Star", "/": "Slash", "=": "Equal",
                   "<": "LessThan", ">": "GreaterThan", "?": "QuestionMark", "_": "_"}
            parts.append(esc.get(ch, f"'{ch}'"))
        i += 1
    return " ".join(parts)


def emit_rules(pairs: list[tuple[str, str]]) -> list[str]:
    lines: list[str] = []
    for tok, lit in pairs:
        if not lit or lit == "__WS__":
            continue
        pat = lpg_char_pattern(lit)
        lines.append(f"            | {pat} /. makeToken($_{tok}); ./")
    return lines


def patch_lexer(lexer_path: Path, g4_paths: list[Path]) -> bool:
    pairs = g4_literal_rules(g4_paths)
    if not pairs:
        return False
    txt = lexer_path.read_text(encoding="utf-8")
    exports_m = re.search(r"%Export(.*?)%End", txt, re.S)
    if not exports_m:
        return False
    exports = {line.strip() for line in exports_m.group(1).splitlines() if line.strip()}
    need = [(t, l) for t, l in pairs if t in exports]
    if not need:
        return False
    # drop rules already present
    missing = [(t, l) for t, l in need if f"makeToken($_{t})" not in txt]
    if not missing:
        return False
    new_rules = "\n".join(emit_rules(missing))
    anchor = "    Token ::="
    if anchor not in txt:
        return False
    txt = txt.replace(
        anchor,
        anchor + "\n" + new_rules,
        1,
    )
    lexer_path.write_text(txt, encoding="utf-8")
    print(f"patched {lexer_path.relative_to(GE)} (+{len(missing)} rules)")
    return True


def patch_parser_token(parser_path: Path, old: str, new: str) -> bool:
    txt = parser_path.read_text(encoding="utf-8")
    if old not in txt:
        return False
    parser_path.write_text(txt.replace(old, new), encoding="utf-8")
    print(f"patched {parser_path.name}: {old} -> {new}")
    return True


def main() -> None:
    units = [
        ("scss", [V4 / "scss/scssLexer.g4"]),
        ("vb6", [V4 / "vb6/VisualBasic6Lexer.g4"]),
        ("vba/vba6", [V4 / "vba/vba6/vba.g4"]),
        ("vba/vba7_1", [V4 / "vba/vba6/vba.g4", V4 / "vba/vba7_1/vbaParser.g4"]),
        ("powerbuilder", [V4 / "powerbuilder/PowerBuilderLexer.g4"]),
    ]
    for uid, g4s in units:
        d = GE / uid
        lexers = [p for p in d.glob("*Lexer.gi") if "KWLexer" not in p.name]
        if not lexers:
            continue
        patch_lexer(lexers[0], g4s)
        parser = next(d.glob("*Parser.g"), None)
        if parser and uid == "odin":
            patch_parser_token(parser, "id ::= ID", "id ::= IDENTIFIER")

    # targeted parser aliases
    patch_parser_token(GE / "odin/OdinParser.g", "id ::= ID", "id ::= IDENTIFIER")
    patch_parser_token(GE / "spass/SpassParser.g", "identifier ::= Identifier", "identifier ::= IDENTIFIER")


if __name__ == "__main__":
    main()
