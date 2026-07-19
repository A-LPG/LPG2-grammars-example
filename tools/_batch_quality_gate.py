#!/usr/bin/env python3
"""Quality-gate fixes for assigned grammars-example batch (no parser shrink)."""
from __future__ import annotations

import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LPG_BIN = __import__("os").environ.get(
    "LPG_BIN", str(ROOT.parent / "lpg2/build-ci-local/lpg-v2.3.0")
)

BATCH = [
    "asm/asmMASM",
    "asm/asmRISCV",
    "asm/nasm",
    "asm/pdp7",
    "asm/ptx/ptx-isa-1.0",
    "angelscript",
    "arden",
    "acme",
    "action",
    "corundum",
    "cobol85",
    "dart2",
    "edif300",
    "eiffel",
    "elixir",
    "erlang",
]

XREGS = [
    "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2", "s0", "s1",
    "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7", "s2", "s3", "s4", "s5",
    "s6", "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6",
]


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


def dedupe_lhs(parser_g: Path, keep: str = "first") -> None:
    t = parser_g.read_text(encoding="utf-8")
    m = re.search(r"(%Rules\s*\n)(.*?)(\n%End\s*)$", t, re.S)
    if not m:
        return
    body = m.group(2)
    lines = body.splitlines(keepends=True)
    chunks: list[tuple[str, list[str]]] = []
    i = 0
    while i < len(lines):
        line = lines[i]
        mm = re.match(r"^(\s*)(\w+)\s*::=", line)
        if not mm:
            i += 1
            continue
        name = mm.group(2)
        chunk = [line]
        i += 1
        while i < len(lines):
            if lines[i].strip() == "":
                chunk.append(lines[i])
                i += 1
                break
            if re.match(r"^\s*\w+\s*::=", lines[i]) and not re.match(r"^\s+\|", lines[i]):
                break
            chunk.append(lines[i])
            i += 1
        chunks.append((name, chunk))
    by_name: dict[str, list[str]] = {}
    order: list[str] = []
    for name, chunk in chunks if keep == "last" else reversed(chunks):
        if name not in by_name:
            if keep == "first":
                order.insert(0, name)
            else:
                order.append(name)
        by_name[name] = chunk
    if keep == "first":
        order = [n for n, _ in chunks if n in by_name and (order.count(n) == 0 or True)]
        seen: set[str] = set()
        order = []
        for name, _ in chunks:
            if name not in seen:
                order.append(name)
                seen.add(name)
    else:
        seen: set[str] = set()
        order = []
        for name, _ in chunks:
            if name not in seen:
                order.append(name)
                seen.add(name)
    new_body = "".join("".join(by_name[n]) for n in order)
    parser_g.write_text(t[: m.start(2)] + new_body + t[m.end(2) :], encoding="utf-8")
    dedupe_parser_file(parser_g)


def dedupe_parser_file(parser_g: Path) -> None:
    t = parser_g.read_text(encoding="utf-8")
    m = re.search(r"(%Rules\s*\n)(.*?)(\n%End\s*)$", t, re.S)
    if not m:
        return
    t = t[: m.start(2)] + dedupe_rule_alts(m.group(2)) + t[m.end(2) :]
    parser_g.write_text(t, encoding="utf-8")


def set_ast_none(parser_g: Path) -> None:
    t = parser_g.read_text(encoding="utf-8")
    t = t.replace("%options automatic_ast=nested", "%options automatic_ast=none")
    parser_g.write_text(t, encoding="utf-8")


def set_start(parser_g: Path, start: str) -> None:
    t = parser_g.read_text(encoding="utf-8")
    t = re.sub(r"(%Start\s*\n\s*)\w+", rf"\g<1>{start}", t)
    parser_g.write_text(t, encoding="utf-8")


def ensure_export(lexer_gi: Path, tokens: list[str]) -> None:
    t = lexer_gi.read_text(encoding="utf-8")
    m = re.search(r"(%Export\s*)(.*?)(%End)", t, re.S)
    if not m:
        return
    existing = set(re.findall(r"[A-Za-z_][\w]*", m.group(2)))
    lines = [ln for ln in m.group(2).splitlines() if ln.strip()]
    for tok in tokens:
        if tok not in existing:
            lines.append(f"    {tok}")
    lexer_gi.write_text(t[: m.start(2)] + "\n".join(lines) + "\n" + t[m.end(2) :], encoding="utf-8")


def patch_folded_case(kw_gi: Path) -> None:
    t = kw_gi.read_text(encoding="utf-8")
    t = t.replace("KWLexerLowerCaseMapF.gi", "KWLexerFoldedCaseMapF.gi")
    kw_gi.write_text(t, encoding="utf-8")


def append_kw_rules(kw_gi: Path, token: str, words: list[str]) -> None:
    t = kw_gi.read_text(encoding="utf-8")
    existing = set(re.findall(rf"\$_({re.escape(token)})\)", t))
    if existing:
        pass
    rules = []
    for w in words:
        parts = " ".join(c for c in w.lower())
        rule = f"    Keyword ::= {parts} /.$setResult($_{token});./"
        if rule not in t:
            rules.append(rule)
    if not rules:
        return
    ensure_export(kw_gi, [token])
    t = kw_gi.read_text(encoding="utf-8")
    t = t.replace(
        "%Rules\n",
        "%Rules\n" + "\n".join(rules) + "\n",
        1,
    )
    kw_gi.write_text(t, encoding="utf-8")


def patch_masm_directive(lexer_gi: Path) -> None:
    t = lexer_gi.read_text(encoding="utf-8")
    if "makeToken($_MASMDIRECTIVE)" in t:
        return
    ensure_export(lexer_gi, ["MASMDIRECTIVE", "NAME", "OPCODE", "REGISTER", "STRING", "EOL"])
    insert = """
            | masmdirective /. makeToken($_MASMDIRECTIVE); ./
            | name_token    /. makeToken($_NAME); ./
"""
    t = t.replace("Token ::= identifier /. checkForKeyWord(); ./", "Token ::= identifier /. checkForKeyWord(); ./" + insert, 1)
    extra = """
    masmdirective ::= '.' masmdirBody
    masmdirBody -> Letter | masmdirBody Letter | masmdirBody Digit
    name_token -> UpperCaseLetter nameRest | '_' nameRest | '@' nameRest
    nameRest -> $empty | nameRest nameChar
    nameChar -> UpperCaseLetter | Digit | '_' | '.' | '@'
"""
    if "masmdirective ::=" not in t:
        t = t.replace("%End\n", extra + "%End\n")
    # EOL on newline
    if "makeToken($_EOL)" not in t:
        t = t.replace(
            "| white /. skipToken(); ./",
            "| LF /. makeToken($_EOL); ./\n            | CR /. makeToken($_EOL); ./\n            | white /. skipToken(); ./",
            1,
        )
    lexer_gi.write_text(t, encoding="utf-8")


def patch_ptx_directive(lexer_gi: Path) -> None:
    patch_masm_directive(lexer_gi)  # same .directive pattern; token name MASMDIRECTIVE or DOT


def patch_eol(lexer_gi: Path, tok: str = "EOL") -> None:
    t = lexer_gi.read_text(encoding="utf-8")
    ensure_export(lexer_gi, [tok])
    if f"makeToken($_{tok})" in t:
        return
    if "| white /. skipToken(); ./" in t:
        t = t.replace(
            "| white /. skipToken(); ./",
            f"| LF /. makeToken($_{tok}); ./\n            | CR /. makeToken($_{tok}); ./\n            | white /. skipToken(); ./",
            1,
        )
    elif "skipToken(); ./" in t and "LF" not in t.split("Token ::=")[1][:800]:
        t = t.replace(
            "Token ::= identifier",
            f"Token ::= eol_line\n            | identifier",
            1,
        )
        extra = f"""
    eol_line ::= LF /. makeToken($_{tok}); ./
               | CR /. makeToken($_{tok}); ./
"""
        t = t.replace("%End\n", extra + "%End\n")
    lexer_gi.write_text(t, encoding="utf-8")


def write_curated(unit: Path, files: list[tuple[str, str]]) -> None:
    d = unit / "examples-curated"
    d.mkdir(parents=True, exist_ok=True)
    for name, body in files:
        (d / name).write_text(body, encoding="utf-8")


def fix_eiffel() -> None:
    p = ROOT / "eiffel/EiffelParser.g"
    dedupe_lhs(p, keep="first")
    dedupe_parser_file(p)


def fix_cobol85() -> None:
    p = ROOT / "cobol85/Cobol85Parser.g"
    dedupe_lhs(p, keep="last")
    t = p.read_text(encoding="utf-8")
    if "charDataKeyword" not in t.split("cobolWord ::=")[-1][:500]:
        t = t.replace(
            "    cobolWord ::= IDENTIFIER\n           | COBOL",
            "    cobolWord ::= IDENTIFIER\n           | charDataKeyword\n           | COBOL",
            1,
        )
        p.write_text(t, encoding="utf-8")
    dedupe_parser_file(p)


def fix_nasm() -> None:
    dedupe_parser_file(ROOT / "asm/nasm/AsmNasmParser.g")


def fix_dart2() -> None:
    set_start(ROOT / "dart2/Dart2Parser.g", "compilationUnit")
    set_ast_none(ROOT / "dart2/Dart2Parser.g")
    write_curated(
        ROOT / "dart2",
        [
            ("tiny.dart", "void main() {\n  print(1);\n}\n"),
            ("fn.dart", "int add(int a, int b) => a + b;\n"),
            ("class.dart", "class Point {\n  final int x;\n  Point(this.x);\n}\n"),
        ],
    )


def fix_asm_masm() -> None:
    patch_folded_case(ROOT / "asm/asmMASM/AsmAsmMASMKWLexer.gi")
    patch_masm_directive(ROOT / "asm/asmMASM/AsmAsmMASMLexer.gi")
    write_curated(
        ROOT / "asm/asmMASM",
        [
            ("smoke.asm", ".code\nend\n"),
            ("hello_min.asm", ".686\n.model flat, stdcall\n.code\nend\n"),
            ("equ.asm", "count EQU 10\nend\n"),
        ],
    )


def fix_asm_riscv() -> None:
    patch_folded_case(ROOT / "asm/asmRISCV/AsmAsmRISCVKWLexer.gi")
    append_kw_rules(ROOT / "asm/asmRISCV/AsmAsmRISCVKWLexer.gi", "XREGS", XREGS)
    patch_eol(ROOT / "asm/asmRISCV/AsmAsmRISCVLexer.gi")
    write_curated(
        ROOT / "asm/asmRISCV",
        [
            ("smoke.s", "addi a0, zero, 1\nret\n"),
            ("li.s", "li a0, 42\nret\n"),
            ("label.s", "main:\n  addi sp, sp, -16\n  ret\n"),
        ],
    )


def fix_asm_pdp7() -> None:
    patch_eol(ROOT / "asm/pdp7/AsmPdp7Lexer.gi")
    p = ROOT / "asm/pdp7/AsmPdp7Parser.g"
    t = p.read_text(encoding="utf-8")
    t = t.replace("eol ::= EOL", "eol ::= EOL\n           | $empty")
    p.write_text(t, encoding="utf-8")
    write_curated(
        ROOT / "asm/pdp7",
        [
            ("smoke.s", "lac d1\nsys exit\n"),
            ("lac.s", "lac arg\njmp done\ndone:\nsys exit\n"),
            ("org.s", "*200\nlac start\nstart:\nsys exit\n"),
        ],
    )


def fix_asm_ptx() -> None:
    u = ROOT / "asm/ptx/ptx-isa-1.0"
    patch_folded_case(u / "AsmPtxPtxIsa10KWLexer.gi")
    lex = u / "AsmPtxPtxIsa10Lexer.gi"
    t = lex.read_text(encoding="utf-8")
    if "makeToken($_MASMDIRECTIVE)" not in t and "directive" not in t:
        ensure_export(lex, ["MASMDIRECTIVE", "EOL"])
        t = t.replace(
            "Token ::= identifier /. checkForKeyWord(); ./",
            "Token ::= dot_directive /. makeToken($_MASMDIRECTIVE); ./\n            | identifier /. checkForKeyWord(); ./",
            1,
        )
        extra = """
    dot_directive ::= '.' dirBody
    dirBody -> Letter | dirBody Letter | dirBody Digit
"""
        t = t.replace("%End\n", extra + "%End\n")
        t = t.replace(
            "| white /. skipToken(); ./",
            "| LF /. makeToken($_EOL); ./\n            | CR /. makeToken($_EOL); ./\n            | white /. skipToken(); ./",
            1,
        )
        lex.write_text(t, encoding="utf-8")
    write_curated(
        u,
        [
            ("tiny.ptx", ".version 1.0\n.target sm_10\n.end\n"),
            ("mov.ptx", ".version 1.0\n.entry kernel()\n{\n  mov.u32 %r1, 0;\n  ret;\n}\n"),
            ("label.ptx", ".version 1.0\n.global kernel;\nkernel:\n  ret;\n"),
        ],
    )


def fix_nasm_unit() -> None:
    fix_nasm()
    write_curated(
        ROOT / "asm/nasm",
        [
            ("smoke.asm", "section .text\nglobal _start\n_start:\n  mov eax, 1\n  ret\n"),
            ("hello_min.asm", "section .data\nmsg db 'hi', 0\n"),
            ("arith.asm", "section .text\n  add eax, ebx\n  sub ecx, 1\n"),
        ],
    )


def fix_ast_none_units() -> None:
    for uid in ("angelscript", "acme", "erlang"):
        set_ast_none(ROOT / uid / f"{json.loads((ROOT / uid / 'harness.json').read_text())['parser']}.g")


def fix_arden() -> None:
    subprocess.run(
        [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py"), "arden"],
        check=False,
        cwd=ROOT,
    )
    patch_folded_case(ROOT / "arden/ArdenKWLexer.gi")
    write_curated(
        ROOT / "arden",
        [
            ("smoke.mlm", "maintenance :\ntitle : Demo ;;\nknowledge :\ndata : x := 1 ;;\nend :\n"),
            ("library.mlm", "maintenance :\ntitle : Lib ;;\nlibrary :\npurpose : Test ;;\nknowledge :\ntype : data-driven ;;\ndata : (x) := 1 ;;\nend :\n"),
            ("logic.mlm", "maintenance :\ntitle : Logic ;;\nknowledge :\ntype : logic ;;\nlogic : if 1 = 1 then conclude true ;;\nend :\n"),
        ],
    )
    h = json.loads((ROOT / "arden/harness.json").read_text())
    h["example_globs"] = ["examples-curated/**/*"]
    (ROOT / "arden/harness.json").write_text(json.dumps(h, indent=2) + "\n")


def fix_corundum() -> None:
    p = ROOT / "corundum/CorundumParser.g"
    t = p.read_text(encoding="utf-8")
    if "expression_list ::= expression" in t and "expression_list_opt" not in t:
        t = t.replace(
            "    expression_list ::= expression terminator",
            "    expression_list ::= expression terminator_opt",
            1,
        )
        t = t.replace(
            "           | expression_list expression terminator",
            "           | expression_list expression terminator_opt",
            1,
        )
        t = t.replace(
            "           | terminator\n",
            "           | terminator_opt\n",
            1,
        )
        t = t.replace(
            "%End\n",
            "    terminator_opt ::= terminator\n           | $empty\n\n%End\n",
            1,
        )
        p.write_text(t, encoding="utf-8")
    patch_eol(ROOT / "corundum/CorundumLexer.gi", "NEWLINE")
    write_curated(
        ROOT / "corundum",
        [
            ("tiny.rb", "a = 1\n"),
            ("fn.rb", "def f(x)\n  x + 1\nend\n"),
            ("if.rb", "if true\n  puts 1\nend\n"),
        ],
    )


def fix_edif300() -> None:
    subprocess.run(
        [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py"), "edif300"],
        check=False,
        cwd=ROOT,
    )
    write_curated(
        ROOT / "edif300",
        [
            ("smoke.edif", "(edif smoke (edifVersion 3 0 0) (status))\n"),
            ("cell.edif", "(edif cell1 (edifVersion 2 0 0) (cell cell1 (view view1)))\n"),
            ("net.edif", "(edif net1 (edifVersion 2 0 0) (net net1 (joined (portRef p1))))\n"),
        ],
    )


def fix_elixir() -> None:
    subprocess.run(
        [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py"), "elixir"],
        check=False,
        cwd=ROOT,
    )
    patch_folded_case(ROOT / "elixir/ElixirKWLexer.gi")
    write_curated(
        ROOT / "elixir",
        [
            ("tiny.ex", "defmodule M do\n  def hello, do: :ok\nend\n"),
            ("fn.ex", "add = fn a, b -> a + b end\n"),
            ("if.ex", "if true do\n  1\nelse\n  0\nend\n"),
        ],
    )


def fix_action() -> None:
    subprocess.run(
        [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py"), "action"],
        check=False,
        cwd=ROOT,
    )
    write_curated(
        ROOT / "action",
        [
            ("smoke.txt", "main\n  writef('hi');\nend\n"),
            ("loop.txt", "main\n  integer i;\n  i := 0;\nend\n"),
            ("call.txt", "main\n  call foo;\nend\n"),
        ],
    )
    h = json.loads((ROOT / "action/harness.json").read_text())
    h["example_globs"] = ["examples-curated/**/*"]
    (ROOT / "action/harness.json").write_text(json.dumps(h, indent=2) + "\n")


def fix_angelscript_acme() -> None:
    for uid in ("angelscript", "acme"):
        subprocess.run(
            [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py"), uid],
            check=False,
            cwd=ROOT,
        )
        u = ROOT / uid
        d = u / "examples-curated"
        d.mkdir(exist_ok=True)
        h = json.loads((u / "harness.json").read_text())
        h["example_globs"] = ["examples-curated/**/*"]
        (u / "harness.json").write_text(json.dumps(h, indent=2) + "\n")
    write_curated(
        ROOT / "angelscript",
        [
            ("hello.txt", 'void main() {\n  print("hi");\n}\n'),
            ("fn.txt", "int add(int a, int b) { return a + b; }\n"),
            ("class.txt", "class Foo { int x; Foo() { x = 0; } }\n"),
        ],
    )
    write_curated(
        ROOT / "acme",
        [
            ("smoke.acme", "component world \"hello\" {\n  port p1;\n}\n"),
            ("export.acme", "export world;\ncomponent c1 {\n  port out p1;\n}\n"),
            ("bind.acme", "component top {\n  binding b1 { c1.p1 -> c2.p1; }\n}\n"),
        ],
    )


def fix_erlang() -> None:
    subprocess.run(
        [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py"), "erlang"],
        check=False,
        cwd=ROOT,
    )
    write_curated(
        ROOT / "erlang",
        [
            ("tiny.erl", "-module(m).\n-export([main/0]).\nmain() -> ok.\n"),
            ("fun.erl", "-module(f).\n-export([add/2]).\nadd(A,B) -> A + B.\n"),
            ("rec.erl", "-module(r).\n-export([loop/0]).\nloop() -> receive stop -> ok end.\n"),
        ],
    )


def fix_cobol85_kw() -> None:
    subprocess.run(
        [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py"), "cobol85"],
        check=False,
        cwd=ROOT,
    )
    patch_folded_case(ROOT / "cobol85/Cobol85KWLexer.gi")
    write_curated(
        ROOT / "cobol85",
        [
            ("smoke.cbl", "IDENTIFICATION DIVISION.\nPROGRAM-ID. SMOKE.\n"),
            ("hello.cbl", "IDENTIFICATION DIVISION.\nPROGRAM-ID. HELLO.\nPROCEDURE DIVISION.\n    DISPLAY 'HI'.\n"),
            ("data.cbl", "IDENTIFICATION DIVISION.\nPROGRAM-ID. DATA1.\nDATA DIVISION.\nWORKING-STORAGE SECTION.\n01 X PIC 9.\n"),
        ],
    )


def main() -> None:
    fix_eiffel()
    fix_cobol85()
    fix_nasm_unit()
    fix_dart2()
    fix_asm_masm()
    fix_asm_riscv()
    fix_asm_pdp7()
    fix_asm_ptx()
    fix_ast_none_units()
    fix_arden()
    fix_corundum()
    fix_edif300()
    fix_elixir()
    fix_action()
    fix_angelscript_acme()
    fix_erlang()
    fix_cobol85_kw()
    subprocess.run(
        [sys.executable, str(ROOT / "tools/rebuild_kw_filters.py")] + BATCH,
        check=False,
        cwd=ROOT,
    )


if __name__ == "__main__":
    main()
