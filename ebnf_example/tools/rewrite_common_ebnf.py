#!/usr/bin/env python3
"""Apply conservative BNF→EBNF list/optional rewrites inside *Parser.g.

Patterns (RHS-only, rule-local):
  1) name ::= X | name SEP X     →  name ::= X (SEP X)*
  2) name ::= X | name X         →  name ::= X+
  3) name ::= $empty | X         →  name ::= X?   (X single symbol)
  4) name ::= $empty | name2
     name2 ::= X | name2 X       →  name ::= X*   (and drop name2 if unused)

Skips rules that look like expression precedence (PLUS/MINUS/TIMES in alts).
Does not invent g4 shapes beyond these idioms — verify with run-one.sh.
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

EBNF_ROOT = Path(__file__).resolve().parents[1]

RULE_SPLIT = re.compile(
    r"(?m)^(?P<indent>\s*)(?P<lhs>[A-Za-z_][\w$]*)\s*::=\s*(?P<rhs>.+?)(?=\n\s*[A-Za-z_][\w$]*\s*::=|\n%End|\Z)",
    re.S,
)
PREC_HINT = re.compile(r"\b(PLUS|MINUS|TIMES|DIV|POW|OR|AND|EQ|NE|LT|GT|LE|GE)\b")


def extract_rules_section(text: str) -> tuple[str, str, str]:
    m = re.search(r"(?is)(%Rules\b)(.*?)(%End\b)", text)
    if not m:
        raise ValueError("no %Rules section")
    return text[: m.start(2)], m.group(2), text[m.end(2) :]


def norm_alt(s: str) -> str:
    return re.sub(r"\s+", " ", s.strip())


def split_alts(rhs: str) -> list[str]:
    # Top-level | only (no nested groups expected in classic BNF twins)
    parts: list[str] = []
    cur: list[str] = []
    depth = 0
    i = 0
    while i < len(rhs):
        c = rhs[i]
        if c in "([{":
            depth += 1
            cur.append(c)
        elif c in ")]}":
            depth = max(0, depth - 1)
            cur.append(c)
        elif c == "|" and depth == 0:
            parts.append("".join(cur))
            cur = []
        else:
            cur.append(c)
        i += 1
    parts.append("".join(cur))
    return [norm_alt(p) for p in parts if norm_alt(p)]


def is_empty(sym: str) -> bool:
    return sym in {"$empty", "%Empty", "%empty"}


def try_rewrite_rule(lhs: str, alts: list[str], all_lhs: set[str]) -> str | None:
    if PREC_HINT.search(" | ".join(alts)) and len(alts) >= 2:
        # Keep layered precedence alone
        if any(re.search(rf"\b{re.escape(lhs)}\b", a) for a in alts):
            return None

    # name ::= X | name SEP X   (left-rec)
    # name ::= X | X SEP name   (right-rec)  → X (SEP X)*
    # name ::= X | name X / X name → X+
    if len(alts) == 2:
        a0, a1 = alts
        m = re.match(rf"^{re.escape(lhs)}\s+(\S+)\s+(\S+)$", a1)
        if m and a0 == m.group(2):
            sep, x = m.group(1), m.group(2)
            if x == a0 and sep != x:
                return f"{x} ({sep} {x})*"
        m_r = re.match(rf"^(\S+)\s+(\S+)\s+{re.escape(lhs)}$", a1)
        if m_r and a0 == m_r.group(1):
            x, sep = m_r.group(1), m_r.group(2)
            if sep != x:
                return f"{x} ({sep} {x})*"
        m2 = re.match(rf"^{re.escape(lhs)}\s+(\S+)$", a1)
        if m2 and a0 == m2.group(1):
            return f"{a0}+"
        m2r = re.match(rf"^(\S+)\s+{re.escape(lhs)}$", a1)
        if m2r and a0 == m2r.group(1):
            return f"{a0}+"

    # name ::= $empty | X  (single token/NT)
    if len(alts) == 2 and is_empty(alts[0]) and re.fullmatch(r"\S+", alts[1]):
        return f"{alts[1]}?"
    if len(alts) == 2 and is_empty(alts[1]) and re.fullmatch(r"\S+", alts[0]):
        return f"{alts[0]}?"

    # name ::= $empty | TOK X  → (TOK X)?
    if len(alts) == 2 and is_empty(alts[0]) and re.fullmatch(r"\S+(?:\s+\S+)+", alts[1]):
        return f"({alts[1]})?"
    if len(alts) == 2 and is_empty(alts[1]) and re.fullmatch(r"\S+(?:\s+\S+)+", alts[0]):
        return f"({alts[0]})?"

    return None


def rewrite_rules_block(block: str) -> tuple[str, int]:
    # Parse into rule dict preserving order
    rules: list[tuple[str, str, list[str]]] = []  # indent, lhs, alts
    pos = 0
    for m in re.finditer(
        r"(?m)^(?P<indent>[ \t]*)(?P<lhs>[A-Za-z_][\w$]*)\s*::=(?P<body>(?:.|\n)*?)(?=^[ \t]*[A-Za-z_][\w$]*\s*::=|\Z)",
        block,
    ):
        lhs = m.group("lhs")
        indent = m.group("indent")
        body = m.group("body")
        # Strip -- comments so apostrophes in comments cannot break alts
        body = re.sub(r"(?m)--[^\n]*", "", body)
        alts = split_alts(body)
        alts = [a for a in alts if a]
        rules.append((indent, lhs, alts))
        pos = m.end()

    if not rules:
        return block, 0

    by_lhs = {lhs: alts for _, lhs, alts in rules}
    all_lhs = set(by_lhs)
    drop: set[str] = set()
    new_alts: dict[str, list[str]] = {}
    changes = 0

    # Pattern 4: name ::= $empty | name2 ; name2 ::= X | name2 X
    for lhs, alts in list(by_lhs.items()):
        if len(alts) == 2 and is_empty(alts[0]) and alts[1] in by_lhs:
            other = alts[1]
            oalts = by_lhs[other]
            if len(oalts) == 2:
                # other ::= X | other X
                m2 = re.match(rf"^{re.escape(other)}\s+(\S+)$", oalts[1])
                if m2 and oalts[0] == m2.group(1):
                    new_alts[lhs] = [f"{oalts[0]}*"]
                    drop.add(other)
                    changes += 1
                    continue
                # other ::= X | other SEP X
                m3 = re.match(rf"^{re.escape(other)}\s+(\S+)\s+(\S+)$", oalts[1])
                if m3 and oalts[0] == m3.group(2):
                    sep, x = m3.group(1), m3.group(2)
                    new_alts[lhs] = [f"{x} ({sep} {x})*"]
                    # empty case: optional whole list → (x (sep x)*)?
                    # Actually name was empty | list, so name ::= (x (sep x)*)?
                    new_alts[lhs] = [f"({x} ({sep} {x})*)?"]
                    drop.add(other)
                    changes += 1
                    continue

    for indent, lhs, alts in rules:
        if lhs in new_alts or lhs in drop:
            continue
        rewritten = try_rewrite_rule(lhs, alts, all_lhs)
        if rewritten:
            new_alts[lhs] = [rewritten]
            changes += 1

    if changes == 0:
        return block, 0

    out_lines: list[str] = []
    # Preserve leading comments in block
    lead = block
    first = re.search(r"(?m)^[ \t]*[A-Za-z_]", block)
    if first:
        out_lines.append(block[: first.start()].rstrip() + ("\n" if first.start() else ""))
    for indent, lhs, alts in rules:
        if lhs in drop:
            continue
        use = new_alts.get(lhs, alts)
        if len(use) == 1:
            out_lines.append(f"{indent}{lhs} ::= {use[0]}\n")
        else:
            pad = " " * (len(lhs) + 4)
            out_lines.append(f"{indent}{lhs} ::= {use[0]}\n")
            for a in use[1:]:
                out_lines.append(f"{indent}{pad}| {a}\n")
        out_lines.append("\n")
    return "".join(out_lines).rstrip() + "\n", changes


def rewrite_parser(path: Path) -> int:
    text = path.read_text(encoding="utf-8")
    try:
        pre, block, post = extract_rules_section(text)
    except ValueError:
        return 0
    new_block, n = rewrite_rules_block(block)
    if n == 0:
        return 0
    path.write_text(pre + new_block + post, encoding="utf-8")
    return n


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("ids", nargs="+")
    args = ap.parse_args()
    total = 0
    for uid in args.ids:
        unit = EBNF_ROOT / uid.strip().strip("/")
        for p in unit.glob("*Parser.g"):
            n = rewrite_parser(p)
            print(f"{p.relative_to(EBNF_ROOT)}: {n} rule rewrite(s)")
            total += n
    print(f"total={total}")


if __name__ == "__main__":
    main()
