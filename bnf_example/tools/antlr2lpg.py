#!/usr/bin/env python3
"""Convert antlr .g4 parser (and simple lexer tokens) into LPG *Parser.g + stub Lexer/KW.

This is a structural port helper — not a full Antlr semantics emulator.
- Expands ?, *, + into opt_/list_ nonterminals
- Maps 'lit' to TOKEN names
- Strips actions / predicates to comments
- Emits Lexer that tokenizes identifiers, numbers, strings, and punctuation
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
V4_DEFAULT = Path("/Users/kuafu/Downloads/grammars-v4-master")

JAVA_KW = {
    "true": "TRUE",
    "false": "FALSE",
    "null": "NULLLITERAL",
    "class": "CLASS_",
    "import": "IMPORT_",
    "package": "PACKAGE_",
    "return": "RETURN_",
    "void": "VOID_",
    "int": "INT_",
    "new": "NEW_",
    "if": "IF_",
    "else": "ELSE_",
    "while": "WHILE_",
    "for": "FOR_",
    "switch": "SWITCH_",
    "case": "CASE_",
    "default": "DEFAULT_",
    "break": "BREAK_",
    "continue": "CONTINUE_",
    "try": "TRY_",
    "catch": "CATCH_",
    "finally": "FINALLY_",
    "throw": "THROW_",
    "throws": "THROWS_",
    "extends": "EXTENDS_",
    "implements": "IMPLEMENTS_",
    "interface": "INTERFACE_",
    "enum": "ENUM_",
    "public": "PUBLIC_",
    "private": "PRIVATE_",
    "protected": "PROTECTED_",
    "static": "STATIC_",
    "final": "FINAL_",
    "abstract": "ABSTRACT_",
    "native": "NATIVE_",
    "synchronized": "SYNCHRONIZED_",
    "volatile": "VOLATILE_",
    "transient": "TRANSIENT_",
    "strictfp": "STRICTFP_",
    "super": "SUPER_",
    "this": "THIS_",
    "instanceof": "INSTANCEOF_",
    "assert": "ASSERT_",
    "const": "CONST_",
    "goto": "GOTO_",
    "boolean": "BOOLEAN_",
    "byte": "BYTE_",
    "char": "CHAR_",
    "short": "SHORT_",
    "long": "LONG_",
    "float": "FLOAT_",
    "double": "DOUBLE_",
    "do": "DO_",
}

PUNCT = {
    "{": "LBRACE",
    "}": "RBRACE",
    "[": "LBRACKET",
    "]": "RBRACKET",
    "(": "LPAREN",
    ")": "RPAREN",
    ",": "COMMA",
    ":": "COLON",
    ";": "SEMI",
    ".": "DOT",
    "=": "EQ",
    "+": "PLUS",
    "-": "MINUS",
    "*": "STAR",
    "/": "SLASH",
    "%": "PERCENT",
    "<": "LT",
    ">": "GT",
    "!": "BANG",
    "?": "QUESTION",
    "&": "AMP",
    "|": "PIPE",
    "^": "CARET",
    "~": "TILDE",
    "@": "AT",
    "#": "HASH",
    "$": "DOLLAR",
    "_": "UNDERSCORE",
    "\\": "BACKSLASH",
    "'": "SQUOTE",
    '"': "DQUOTE",
    "`": "BACKTICK",
}


NAME_OVERRIDE = {
    "java/java8": "Java8",
    "kotlin/kotlin-formal": "KotlinFormal",
    "scala/scala2": "Scala2",
    "scala/scala3": "Scala3",
    "swift/swift2": "Swift2",
    "swift/swift3": "Swift3",
    "swift/swift5": "Swift5",
    "csharp/v6": "CsharpV6",
    "csharp/v7": "CsharpV7",
    "csharp/v8-spec": "CsharpV8Spec",
}


def java_name(uid: str) -> str:
    """java/java → Java; python/python3 → PythonPython3; javascript/javascript → Javascript."""
    if uid in NAME_OVERRIDE:
        return NAME_OVERRIDE[uid]
    parts = [p for p in re.split(r"[^A-Za-z0-9]+", uid) if p]
    if len(parts) >= 2 and parts[0].lower() == parts[-1].lower():
        parts = parts[-1:]
    return "".join(p[:1].upper() + p[1:] for p in parts) or "Grammar"


# Prefer file/module start rules over REPL/single-line entry points.
PREFERRED_START = {
    "javascript/typescript": "program",
    "java/java": "compilationUnit",
    "java/java8": "compilationUnit",
    "java/java9": "compilationUnit",
    "java/java20": "compilationUnit",
    "javascript/javascript": "program",
    "python/python3": "file_input",
    "python/python": "file_input",
    "golang": "sourceFile",
    "rust": "crate",
    "cpp": "translationUnit",
    "html": "htmlDocument",
    "wat": "module",
    "erlang": "forms",
    "bicep": "program",
    "cypher": "script",
    "javacc": "javacc_input",
    "xpath/xpath20": "xpath",
    "iri": "parse",
    "pddl": "pddlDoc",
    "hexpat": "hexpat",
    "sql/drill": "drill_file",
    "asm/asmMASM": "prog",
    "asm/ptx/ptx-isa-1.0": "prog",
    "scala/scala3": "compilationUnit",
    "scala/scala2": "compilationUnit",
    "logo/ucb-logo": "parse",
    "php": "htmlDocument",
    "sql/sqlite": "parse",
    "sql/teradata": "sql_script",
    "sql/trino": "parse",
    "stringtemplate": "group",
    "v": "sourceFile",
    "antlr/antlr4": "grammarSpec",
    "solidity": "sourceUnit",
    "bcpl": "program",
    "ruleworks": "program",
    "asm/masm": "compilationUnit",
    "vaxscan": "program",
    "apex": "compilationUnit",
    "idl": "specification",
}


MULTI_OPS = {
    "...": "ELLIPSIS",
    ">>>=": "URSHIFTEQ",
    "<<=": "LSHIFTEQ",
    ">>=": "RSHIFTEQ",
    "**=": "STARSTAREQ",
    "//=": "SLASHSLASHEQ",
    "??=": "QUESTQUESTEQ",
    "===": "EQEQEQ",
    "!==": "NOTEQEQ",
    "=>": "FATARROW",
    "->": "ARROW",
    "==": "EQEQ",
    "!=": "NOTEQ",
    "<=": "LTEQ",
    ">=": "GTEQ",
    "&&": "ANDAND",
    "||": "OROR",
    "++": "PLUSPLUS",
    "--": "MINUSMINUS",
    "<<": "LSHIFT",
    ">>": "RSHIFT",
    ">>>": "URSHIFT",
    "+=": "PLUSEQ",
    "-=": "MINUSEQ",
    "*=": "STAREQ",
    "/=": "SLASHEQ",
    "%=": "PERCENTEQ",
    "&=": "AMPEQ",
    "|=": "PIPEEQ",
    "^=": "CARETEQ",
    "@=": "ATEQ",
    ":=": "COLONEQ",
    "**": "STARSTAR",
    "//": "SLASHSLASH",
    "::": "COLONCOLON",
    "..": "DOTDOT",
    "??": "QUESTQUEST",
    "?.": "QUESTDOT",
    "<>": "LTGT",
    "yield*": "YIELDSTAR",
    "&^": "BITCLEAR",
    "<-": "RECEIVE",
    ".*": "DOTSTAR",
    "->*": "ARROWSTAR",
}


def pkg_name(uid: str) -> str:
    # Java package segments cannot start with a digit (e.g. ptx-isa-1.0 → …ptx_isa_1_0).
    parts = []
    for seg in uid.replace("-", "_").split("/"):
        seg = seg.replace(".", "_")
        if seg and seg[0].isdigit():
            seg = "v" + seg
        parts.append(seg)
    return "lpg.grammars." + ".".join(parts)


def _protect_quoted(text: str) -> tuple[str, list[str]]:
    """Replace '...' / \"...\" literals so action/option stripping cannot eat '{' '<' etc."""
    held: list[str] = []

    def repl(m: re.Match[str]) -> str:
        held.append(m.group(0))
        return f" __Q{len(held) - 1}__ "

    out = re.sub(r"'(?:\\.|[^'\\])*'|\"(?:\\.|[^\"\\])*\"", repl, text)
    return out, held


def _restore_quoted(text: str, held: list[str]) -> str:
    # Highest index first so __Q1__ cannot corrupt __Q10__/__Q11__/…
    for i in range(len(held) - 1, -1, -1):
        text = text.replace(f"__Q{i}__", held[i])
    return text


def _strip_line_comments(text: str) -> str:
    """Remove // comments without treating quotes inside comments as string starts.

    Important: a comment like `// don't ... https://...` must not feed `'` into
    quote protection (that previously swallowed the rest of the grammar).
    """
    out: list[str] = []
    for line in text.splitlines(keepends=True):
        in_q: str | None = None
        i = 0
        cut = len(line)
        while i < len(line):
            c = line[i]
            if in_q:
                if c == "\\" and i + 1 < len(line):
                    i += 2
                    continue
                if c == in_q:
                    in_q = None
                i += 1
                continue
            if c in "'\"":
                in_q = c
                i += 1
                continue
            if c == "/" and i + 1 < len(line) and line[i + 1] == "/":
                cut = i
                break
            i += 1
        chunk = line[:cut]
        if line.endswith("\n") and not chunk.endswith("\n"):
            chunk += "\n"
        out.append(chunk)
    return "".join(out)


def _strip_balanced_at_members(text: str) -> str:
    """Remove @parser::members { ... } / @lexer::members { ... } (nested braces)."""
    out: list[str] = []
    i = 0
    n = len(text)
    while i < n:
        m = re.match(r"@(?:parser|lexer)\s*::\s*members\s*\{", text[i:], re.I)
        if not m:
            out.append(text[i])
            i += 1
            continue
        i += m.end()  # past opening '{'
        depth = 1
        while i < n and depth:
            c = text[i]
            if c == "{":
                depth += 1
            elif c == "}":
                depth -= 1
            i += 1
    return "".join(out)


def strip_antlr_noise(text: str) -> str:
    # Comments first (quote-aware for //), then protect literals, then actions.
    text = re.sub(r"/\*.*?\*/", "", text, flags=re.S)
    text = _strip_line_comments(text)
    text, held = _protect_quoted(text)
    # Drop @parser::members / @lexer::members before generic @header stripping,
    # otherwise leftover `::members` + partial brace deletion invents fake rules
    # (seen on v/V.g4 → bogus `members` swallowing `sourceFile`).
    text = _strip_balanced_at_members(text)
    text = re.sub(r"@\w+(\s*\([^)]*\))?", "", text)
    # Options/tokens/channels blocks are brace-balanced and often omit the
    # trailing ';' — do not use non-greedy .*? which can swallow rules until
    # the first action `{...};` later in the file (Go/Rust/C++).
    text = re.sub(r"options\s*\{[^{}]*\}\s*;?", "", text, flags=re.S)
    text = re.sub(r"tokens\s*\{[^{}]*\}\s*;?", "", text, flags=re.S)
    text = re.sub(r"channels\s*\{[^{}]*\}\s*;?", "", text, flags=re.S)
    text = re.sub(r"import\s+[^;]+;", "", text)
    text = re.sub(r"(parser\s+)?grammar\s+\w+\s*;", "", text)
    text = re.sub(r"lexer\s+grammar\s+\w+\s*;", "", text)
    for _ in range(8):
        nxt = re.sub(r"\{[^{}]*\}", "", text)
        if nxt == text:
            break
        text = nxt
    text = re.sub(r"\?\s*", " ?", text)
    return _restore_quoted(text, held)


def find_g4_files(v4_unit: Path) -> tuple[list[Path], list[Path]]:
    g4s = [
        p
        for p in v4_unit.rglob("*.g4")
        if "examples" not in p.parts and "target" not in p.parts and "original" not in p.parts
    ]
    top = [p for p in g4s if p.parent == v4_unit] or g4s
    parser_files, lexer_files, combined = [], [], []
    for p in top:
        t = p.read_text(encoding="utf-8", errors="replace")
        if re.search(r"^\s*parser\s+grammar\b", t, re.M):
            parser_files.append(p)
        elif re.search(r"^\s*lexer\s+grammar\b", t, re.M):
            lexer_files.append(p)
        else:
            combined.append(p)
    if not parser_files and combined:
        parser_files = combined
        lexer_files = combined
    # Prefer a single primary parser when grammars-v4 ships sibling dialects
    # (e.g. stringtemplate STGParser+STParser) to avoid merged dual starts.
    if len(parser_files) > 1:
        prefer_names = ("ANTLRv4Parser.g4", "STGParser.g4")
        for want in prefer_names:
            picked = [p for p in parser_files if p.name == want]
            if picked:
                parser_files = picked
                break
        else:
            parser_files = [sorted(parser_files, key=lambda p: (0 if "Parser" in p.name else 1, len(p.name)))[0]]
    return parser_files, lexer_files


def split_rules(body: str) -> list[tuple[str, str]]:
    """Return list of (name, rhs) for parser rules (lowercase start) and lexer (UPPER).

    Scanner is quote- and character-class-aware so lexer rules like
    `~[\\']` / `CHARACTER_LITERAL` cannot swallow the rest of a combined .g4.
    """
    rules: list[tuple[str, str]] = []
    # Keep newlines: rule headers are line-oriented in grammars-v4.
    n = len(body)
    i = 0

    def skip_ws_comments(pos: int) -> int:
        while pos < n:
            if body[pos] in " \t\r\n\f":
                pos += 1
                continue
            if body.startswith("//", pos):
                while pos < n and body[pos] not in "\r\n":
                    pos += 1
                continue
            if body.startswith("/*", pos):
                end = body.find("*/", pos + 2)
                pos = n if end < 0 else end + 2
                continue
            break
        return pos

    while i < n:
        i = skip_ws_comments(i)
        if i >= n:
            break
        # optional fragment keyword
        if body.startswith("fragment", i) and (i + 8 >= n or not (body[i + 8].isalnum() or body[i + 8] == "_")):
            i = skip_ws_comments(i + 8)
        m = re.match(r"[A-Za-z_][\w]*", body[i:])
        if not m:
            i += 1
            continue
        name = m.group(0)
        j = skip_ws_comments(i + len(name))
        # skip returns/locals clauses
        while j < n and body.startswith(("returns", "locals"), j):
            br = body.find("[", j)
            if br < 0:
                break
            depth = 0
            k = br
            while k < n:
                if body[k] == "[":
                    depth += 1
                elif body[k] == "]":
                    depth -= 1
                    if depth == 0:
                        k += 1
                        break
                k += 1
            j = skip_ws_comments(k)
        if j >= n or body[j] != ":":
            i += 1
            continue
        j += 1  # skip ':'
        # scan RHS to semicolon
        rhs_chars: list[str] = []
        in_sq = False
        in_dq = False
        in_class = False
        while j < n:
            c = body[j]
            if in_sq:
                rhs_chars.append(c)
                if c == "\\" and j + 1 < n:
                    rhs_chars.append(body[j + 1])
                    j += 2
                    continue
                if c == "'":
                    in_sq = False
                j += 1
                continue
            if in_dq:
                rhs_chars.append(c)
                if c == "\\" and j + 1 < n:
                    rhs_chars.append(body[j + 1])
                    j += 2
                    continue
                if c == '"':
                    in_dq = False
                j += 1
                continue
            if in_class:
                rhs_chars.append(c)
                if c == "\\" and j + 1 < n:
                    rhs_chars.append(body[j + 1])
                    j += 2
                    continue
                if c == "]":
                    in_class = False
                j += 1
                continue
            if c == "'":
                in_sq = True
                rhs_chars.append(c)
                j += 1
                continue
            if c == '"':
                in_dq = True
                rhs_chars.append(c)
                j += 1
                continue
            if c == "[":
                in_class = True
                rhs_chars.append(c)
                j += 1
                continue
            if c == ";":
                j += 1
                break
            rhs_chars.append(c)
            j += 1
        if name != "fragment" and not name.startswith("$"):
            rhs = "".join(rhs_chars).strip()
            rhs = re.sub(r"\s+", " ", rhs)
            # Drop channel/skip commands leftover on lexer rules
            rhs = re.sub(r"->\s*\w+(\s*\([^)]*\))?", "", rhs).strip()
            rules.append((name, rhs))
        i = j
    return rules


ESCAPE_LIT = {
    "\\n": "NL",
    "\\r": "CR",
    "\\t": "HT",
    "\\f": "FF",
    "\\b": "BKSP",
    "\\'": "SQUOTE",
    '\\"': "DQUOTE",
    "\\\\": "BACKSLASH",
}


def lit_token(lit: str, lit_map: dict[str, str]) -> str:
    if lit in lit_map:
        return lit_map[lit]
    if lit == "":
        lit_map[lit] = "EMPTY_LIT"
        return "EMPTY_LIT"
    # unescape common antlr escapes for mapping
    try:
        raw = lit.encode("utf-8").decode("unicode_escape") if "\\" in lit else lit
    except UnicodeDecodeError:
        raw = lit
    if lit in ESCAPE_LIT:
        tok = ESCAPE_LIT[lit]
        lit_map[lit] = tok
        return tok
    if lit in MULTI_OPS or raw in MULTI_OPS:
        tok = MULTI_OPS.get(lit) or MULTI_OPS[raw]
        lit_map[lit] = tok
        return tok
    if raw in ("\n",):
        lit_map[lit] = "NL"
        return "NL"
    if raw in ("\r",):
        lit_map[lit] = "CR"
        return "CR"
    if raw in ("\t",):
        lit_map[lit] = "HT"
        return "HT"
    if lit in PUNCT or raw in PUNCT:
        tok = PUNCT.get(lit) or PUNCT[raw]
        lit_map[lit] = tok
        return tok
    key = raw.lower()
    # Prefer stable uppercase spellings (match grammars-v4 lexer token style).
    # Avoid JAVA_KW *_ suffixes — they diverge from lexer TOKEN names (CLASS vs CLASS_).
    if key == "null":
        tok = "NULL_LITERAL"
    elif key == "true":
        tok = "TRUE"
    elif key == "false":
        tok = "FALSE"
    else:
        safe = re.sub(r"[^A-Za-z0-9]", "_", raw).upper()
        if not safe or safe[0].isdigit():
            safe = "T_" + safe
        tok = safe
        if tok == "_" or not tok or tok == "T_":
            tok = "LIT_" + str(abs(hash(lit)) % 100000)
        if tok in ("__", "___", "____") or set(tok) <= {"_"}:
            tok = "OP_" + str(abs(hash(lit)) % 100000)
    lit_map[lit] = tok
    return tok


_ebnf_counter = 0


def next_aux(prefix: str) -> str:
    global _ebnf_counter
    _ebnf_counter += 1
    return f"{prefix}_{_ebnf_counter}"


def convert_alt(alt: str, lit_map: dict[str, str], aux_rules: list[tuple[str, str]]) -> str:
    """Convert one alternative sequence to LPG symbols."""
    alt = alt.strip()
    if not alt or alt == "EOF":
        return "$empty" if not alt else ""  # EOF handled by %Eof
    # remove Antlr element options only (not '<' / '>' literals already tokenized)
    alt = re.sub(
        r"<\s*(assoc|type|skip|channel|mode|pushMode|popMode)\s*=[^>]*>",
        "",
        alt,
        flags=re.I,
    )
    # remove alt labels #PrimaryExpression / # IdentifierExpression
    alt = re.sub(r"#\s*[A-Za-z_]\w*", "", alt)
    # remove labels id= (but not == or =>)
    alt = re.sub(r"\b[A-Za-z_]\w*\s*=(?![=])", "", alt)
    # remove ~ and character sets roughly → IDENTIFIER placeholder later in lexer
    tokens_out: list[str] = []
    i = 0
    s = alt
    while i < len(s):
        if s[i].isspace():
            i += 1
            continue
        if s.startswith("EOF", i) and (i + 3 == len(s) or not s[i + 3].isalnum()):
            i += 3
            continue
        if s[i] in "('\"":
            quote = s[i]
            if quote == "(":
                # parenthesized
                depth = 1
                j = i + 1
                while j < len(s) and depth:
                    if s[j] == "(":
                        depth += 1
                    elif s[j] == ")":
                        depth -= 1
                    j += 1
                inner = s[i + 1 : j - 1]
                rest = s[j:]
                # trailing ebnf
                ebnf = ""
                m = re.match(r"\s*([?*+])", rest)
                if m:
                    ebnf = m.group(1)
                    j += m.end()
                # if inner has | it's alts
                if "|" in inner:
                    name = next_aux("grp")
                    alts = [convert_alt(a, lit_map, aux_rules) for a in split_top_alts(inner)]
                    alts = [a for a in alts if a]
                    if not alts:
                        alts = ["$empty"]
                    aux_rules.append((name, " | ".join(alts)))
                    sym = name
                else:
                    sym = convert_alt(inner, lit_map, aux_rules) or next_aux("empty")
                    if " " in sym:
                        name = next_aux("seq")
                        aux_rules.append((name, sym))
                        sym = name
                if ebnf == "?":
                    on = next_aux("opt")
                    aux_rules.append((on, f"{sym} | $empty"))
                    tokens_out.append(on)
                elif ebnf == "*":
                    ln = next_aux("list")
                    aux_rules.append((ln, f"$empty | {ln} {sym}"))
                    tokens_out.append(ln)
                elif ebnf == "+":
                    ln = next_aux("list")
                    aux_rules.append((ln, f"{sym} | {ln} {sym}"))
                    tokens_out.append(ln)
                else:
                    tokens_out.append(sym)
                i = j
                continue
            # string literal
            j = i + 1
            while j < len(s):
                if s[j] == "\\" and j + 1 < len(s):
                    j += 2
                    continue
                if s[j] == quote:
                    break
                j += 1
            lit = s[i + 1 : j]
            j += 1
            tok = lit_token(lit, lit_map)
            rest = s[j:]
            m = re.match(r"\s*([?*+])", rest)
            if m:
                ebnf = m.group(1)
                j += m.end()
                if ebnf == "?":
                    on = next_aux("opt")
                    aux_rules.append((on, f"{tok} | $empty"))
                    tokens_out.append(on)
                elif ebnf == "*":
                    ln = next_aux("list")
                    aux_rules.append((ln, f"$empty | {ln} {tok}"))
                    tokens_out.append(ln)
                else:
                    ln = next_aux("list")
                    aux_rules.append((ln, f"{tok} | {ln} {tok}"))
                    tokens_out.append(ln)
            else:
                tokens_out.append(tok)
            i = j
            continue
        # char set [ ... ] or ~[...]  → skip as IDENTIFIER-ish terminal CHARSET
        if s[i] == "~":
            i += 1
            continue
        if s[i] == "[":
            j = i + 1
            while j < len(s) and s[j] != "]":
                if s[j] == "\\" and j + 1 < len(s):
                    j += 2
                    continue
                j += 1
            j += 1
            rest = s[j:]
            m = re.match(r"\s*([?*+])", rest)
            tok = "CHARSET"
            if m:
                ebnf = m.group(1)
                j += m.end()
                if ebnf == "?":
                    on = next_aux("opt")
                    aux_rules.append((on, f"{tok} | $empty"))
                    tokens_out.append(on)
                elif ebnf == "*":
                    ln = next_aux("list")
                    aux_rules.append((ln, f"$empty | {ln} {tok}"))
                    tokens_out.append(ln)
                else:
                    ln = next_aux("list")
                    aux_rules.append((ln, f"{tok} | {ln} {tok}"))
                    tokens_out.append(ln)
            else:
                tokens_out.append(tok)
            i = j
            continue
        # identifier / TOKEN
        m = re.match(r"[A-Za-z_][\w]*", s[i:])
        if m:
            name = m.group(0)
            i += len(name)
            rest = s[i:]
            em = re.match(r"\s*([?*+])", rest)
            if em:
                ebnf = em.group(1)
                i += em.end()
                if ebnf == "?":
                    on = next_aux("opt")
                    aux_rules.append((on, f"{name} | $empty"))
                    tokens_out.append(on)
                elif ebnf == "*":
                    ln = next_aux("list")
                    aux_rules.append((ln, f"$empty | {ln} {name}"))
                    tokens_out.append(ln)
                else:
                    ln = next_aux("list")
                    aux_rules.append((ln, f"{name} | {ln} {name}"))
                    tokens_out.append(ln)
            else:
                tokens_out.append(name)
            continue
        # skip unknown char
        i += 1
    # flatten multi-symbol groups that were returned as multi-token strings
    flat: list[str] = []
    for t in tokens_out:
        flat.extend(t.split())
    return " ".join(flat)


def split_top_alts(rhs: str) -> list[str]:
    alts = []
    depth = 0
    cur = []
    i = 0
    while i < len(rhs):
        c = rhs[i]
        if c in "([{":
            depth += 1
            cur.append(c)
        elif c in ")]}":
            depth = max(0, depth - 1)
            cur.append(c)
        elif c in "'\"":
            quote = c
            cur.append(c)
            i += 1
            while i < len(rhs):
                cur.append(rhs[i])
                if rhs[i] == "\\" and i + 1 < len(rhs):
                    i += 1
                    cur.append(rhs[i])
                elif rhs[i] == quote:
                    break
                i += 1
        elif c == "|" and depth == 0:
            alts.append("".join(cur).strip())
            cur = []
        else:
            cur.append(c)
        i += 1
    alts.append("".join(cur).strip())
    # Keep empty alternatives when multiple alts exist — Antlr often writes
    # `/* empty */ | foo` and comment-stripping leaves a leading empty alt.
    # Dropping those made left-recursive `opt_*` rules non-nullable (ruleworks).
    if len(alts) > 1:
        return alts
    return [a for a in alts if a]


def convert_parser_rules(
    rules: list[tuple[str, str]], lit_map: dict[str, str], preferred_start: str | None = None
) -> tuple[str, str]:
    """Return (rules_block, start_symbol)."""
    global _ebnf_counter
    _ebnf_counter = 0
    aux: list[tuple[str, str]] = []
    out_lines = []
    start = None
    parser_rules = [(n, r) for n, r in rules if n[:1].islower() or (n[:1].isupper() and n.lower() == n)]
    # Antlr: parser rules usually start with lowercase
    parser_rules = [(n, r) for n, r in rules if n[0].islower()]
    if not parser_rules:
        # fallback: all non-fragment looking
        parser_rules = [(n, r) for n, r in rules if not n.isupper()]
    names = {n for n, _ in parser_rules}
    if preferred_start and preferred_start in names:
        start = preferred_start
    for name, rhs in parser_rules:
        if start is None:
            start = name
        alts = split_top_alts(rhs)
        converted = []
        for a in alts:
            c = convert_alt(a, lit_map, aux)
            if c is None:
                continue
            if c == "":
                c = "$empty"
            converted.append(c)
        if not converted:
            converted = ["$empty"]
        seen = set()
        uniq = []
        for c in converted:
            if c not in seen:
                seen.add(c)
                uniq.append(c)
        out_lines.append(f"    {name} ::= {uniq[0]}")
        for u in uniq[1:]:
            out_lines.append(f"           | {u}")
        out_lines.append("")
    for name, rhs in aux:
        out_lines.append(f"    {name} ::= {rhs}")
        out_lines.append("")
    return "\n".join(out_lines).rstrip() + "\n", start or "start_"


def lalr_fix_rules(uid: str, rules_block: str) -> str:
    """Post-process structural port for LALR: soft-keywords, expression layering."""
    if uid.startswith("java/"):
        # Soft keyword identifiers clash with module/record syntax in LALR tables.
        rules_block = re.sub(
            r"    identifier ::= IDENTIFIER\n(?:           \| [A-Z][A-Z0-9_]*\n)+",
            "    identifier ::= IDENTIFIER\n",
            rules_block,
        )
        rules_block = re.sub(
            r"    typeIdentifier ::= IDENTIFIER\n(?:           \| [A-Z][A-Z0-9_]*\n)+",
            "    typeIdentifier ::= IDENTIFIER\n",
            rules_block,
        )
        # Antlr formalParameters prefer receiverParameter | formalParameter — LALR
        # always shifts into receiverParameter (needs THIS). Prefer plain formals.
        rules_block = re.sub(
            r"    formalParameters ::= LPAREN opt_\d+ RPAREN",
            "    formalParameters ::= LPAREN opt_formals RPAREN",
            rules_block,
        )
        if "opt_formals ::=" not in rules_block:
            # Omit receiverParameter here — it shares a typeType prefix with
            # formalParameter and wins LALR conflicts (expects THIS).
            rules_block += "\n    opt_formals ::= $empty | formalParameterList\n"
        # Simplify classType (package-qualified generics) for LALR reliability.
        rules_block = re.sub(
            r"    classType ::= .*\n(?:           \| .*\n)*",
            "    classType ::= typeIdentifier\n"
            "           | classType DOT typeIdentifier\n",
            rules_block,
            count=1,
        )
        # typeType: annotation* (class|primitive) dims* — flatten for LALR
        rules_block = re.sub(
            r"    typeType ::= .*\n(?:           \| .*\n)*",
            "    typeType ::= primitiveType\n"
            "           | classOrInterfaceType\n"
            "           | typeType LBRACKET RBRACKET\n",
            rules_block,
            count=1,
        )
        # Local decls in blocks: LALR cannot share typeType prefix with statement
        # via localVariableDeclaration; inline like fieldDeclaration.
        rules_block = re.sub(
            r"    blockStatement ::= localVariableDeclaration SEMI\n"
            r"           \| localTypeDeclaration\n"
            r"           \| statement\n",
            "    blockStatement ::= typeType variableDeclarators SEMI\n"
            "           | FINAL typeType variableDeclarators SEMI\n"
            "           | localTypeDeclaration\n"
            "           | statement\n",
            rules_block,
        )
        m_lv = re.search(
            r"    localVariableDeclaration ::= (list_\d+) (grp_\d+)\n",
            rules_block,
        )
        if m_lv:
            lv_list, lv_grp = m_lv.group(1), m_lv.group(2)
            rules_block = re.sub(
                r"    forInit ::= localVariableDeclaration\n           \| expressionList\n",
                "    forInit ::= forLocalVar\n           | expressionList\n\n"
                f"    forLocalVar ::= {lv_list} {lv_grp}\n",
                rules_block,
            )
        # Replace flat Antlr expression (ALL(*) style) with precedence layers.
        layered = """    expression ::= assignmentExpr

    assignmentExpr ::= conditionalExpr
           | conditionalExpr EQ assignmentExpr
           | conditionalExpr PLUSEQ assignmentExpr
           | conditionalExpr MINUSEQ assignmentExpr
           | conditionalExpr STAREQ assignmentExpr
           | conditionalExpr SLASHEQ assignmentExpr
           | conditionalExpr PERCENTEQ assignmentExpr
           | conditionalExpr AMPEQ assignmentExpr
           | conditionalExpr PIPEEQ assignmentExpr
           | conditionalExpr CARETEQ assignmentExpr

    conditionalExpr ::= orExpr
           | orExpr QUESTION expression COLON conditionalExpr

    orExpr ::= andExpr
           | orExpr OROR andExpr

    andExpr ::= bitOrExpr
           | andExpr ANDAND bitOrExpr

    bitOrExpr ::= bitXorExpr
           | bitOrExpr PIPE bitXorExpr

    bitXorExpr ::= bitAndExpr
           | bitXorExpr CARET bitAndExpr

    bitAndExpr ::= eqExpr
           | bitAndExpr AMP eqExpr

    eqExpr ::= relExpr
           | eqExpr EQEQ relExpr
           | eqExpr NOTEQ relExpr

    relExpr ::= shiftExpr
           | relExpr LT shiftExpr
           | relExpr GT shiftExpr
           | relExpr LTEQ shiftExpr
           | relExpr GTEQ shiftExpr
           | relExpr INSTANCEOF typeType

    shiftExpr ::= addExpr
           | shiftExpr LSHIFT addExpr
           | shiftExpr RSHIFT addExpr
           | shiftExpr URSHIFT addExpr

    addExpr ::= multExpr
           | addExpr PLUS multExpr
           | addExpr MINUS multExpr

    multExpr ::= unaryExpr
           | multExpr STAR unaryExpr
           | multExpr SLASH unaryExpr
           | multExpr PERCENT unaryExpr

    unaryExpr ::= PLUSPLUS unaryExpr
           | MINUSMINUS unaryExpr
           | PLUS unaryExpr
           | MINUS unaryExpr
           | TILDE unaryExpr
           | BANG unaryExpr
           | postfixExpr

    postfixExpr ::= primary
           | postfixExpr LBRACKET expression RBRACKET
           | postfixExpr DOT IDENTIFIER
           | postfixExpr DOT IDENTIFIER arguments
           | postfixExpr DOT methodCall
           | postfixExpr PLUSPLUS
           | postfixExpr MINUSMINUS
           | methodCall
           | NEW creator
           | lambdaExpression
           | switchExpression

"""
        rules_block = re.sub(
            r"    expression ::= primary\n(?:           \| .*\n)+",
            layered,
            rules_block,
            count=1,
        )
        # Drop cast-style primary ambiguity: keep (expression) only in primary
    elif uid.startswith("javascript/"):
        # Soft reserved words as identifiers (If/From/...) explode LALR conflicts.
        rules_block = re.sub(
            r"    identifier ::= IDENTIFIER\n(?:           \| \w+\n)+",
            "    identifier ::= IDENTIFIER\n",
            rules_block,
        )
        layered = """    singleExpression ::= jsAssignment

    jsAssignment ::= jsConditional
           | jsConditional EQ jsAssignment
           | jsConditional PLUSEQ jsAssignment
           | jsConditional MINUSEQ jsAssignment
           | jsConditional STAREQ jsAssignment
           | jsConditional SLASHEQ jsAssignment

    jsConditional ::= jsOr
           | jsOr QUESTION jsAssignment COLON jsAssignment

    jsOr ::= jsAnd
           | jsOr OROR jsAnd

    jsAnd ::= jsEq
           | jsAnd ANDAND jsEq

    jsEq ::= jsRel
           | jsEq EQEQ jsRel
           | jsEq NOTEQ jsRel
           | jsEq EQEQEQ jsRel
           | jsEq NOTEQEQ jsRel

    jsRel ::= jsAdd
           | jsRel LT jsAdd
           | jsRel GT jsAdd
           | jsRel LTEQ jsAdd
           | jsRel GTEQ jsAdd

    jsAdd ::= jsMul
           | jsAdd PLUS jsMul
           | jsAdd MINUS jsMul

    jsMul ::= jsUnary
           | jsMul STAR jsUnary
           | jsMul SLASH jsUnary
           | jsMul PERCENT jsUnary

    jsUnary ::= PLUSPLUS jsUnary
           | MINUSMINUS jsUnary
           | PLUS jsUnary
           | MINUS jsUnary
           | BANG jsUnary
           | TYPEOF jsUnary
           | jsPostfix

    jsPostfix ::= jsPrimary
           | jsPostfix DOT IDENTIFIER
           | jsPostfix arguments
           | jsPostfix LBRACKET expressionSequence RBRACKET
           | jsPostfix PLUSPLUS
           | jsPostfix MINUSMINUS

    jsPrimary ::= THIS
           | IDENTIFIER
           | literal
           | LPAREN expressionSequence RPAREN
           | NEW jsPrimary arguments
           | NEW jsPrimary
           | arrayLiteral
           | objectLiteral
           | anonymousFunction

"""
        if re.search(r"    singleExpression ::=", rules_block):
            rules_block = re.sub(
                r"    singleExpression ::= .*\n(?:           \| .*\n)+",
                layered,
                rules_block,
                count=1,
            )
    elif uid.startswith("python/"):
        # Prefer OPEN_* names from lexer → our punct names already from literals.
        for a, b in [
            ("OPEN_PAREN", "LPAREN"),
            ("CLOSE_PAREN", "RPAREN"),
            ("OPEN_BRACK", "LBRACKET"),
            ("CLOSE_BRACK", "RBRACKET"),
            ("OPEN_BRACE", "LBRACE"),
            ("CLOSE_BRACE", "RBRACE"),
            ("SEMI_COLON", "SEMI"),
            ("ASSIGN", "EQ"),
            ("OR_OP", "PIPE"),
            ("AND_OP", "AMP"),
            ("XOR", "CARET"),
            ("LEFT_SHIFT", "LSHIFT"),
            ("RIGHT_SHIFT", "RSHIFT"),
            ("ADD", "PLUS"),
            ("DIV", "SLASH"),
            ("MOD", "PERCENT"),
            ("IDIV", "SLASHSLASH"),
            ("NOT_OP", "TILDE"),
            ("LESS_THAN", "LT"),
            ("GREATER_THAN", "GT"),
            ("EQUALS", "EQEQ"),
            ("GT_EQ", "GTEQ"),
            ("LT_EQ", "LTEQ"),
            ("NOT_EQ", "NOTEQ"),
            ("POWER", "STARSTAR"),
        ]:
            rules_block = re.sub(rf"\b{a}\b", b, rules_block)
    elif uid == "golang":
        if "goOr ::=" in rules_block:
            return rules_block
        # Normalize GoLexer names to the shared punct vocabulary.
        for a, b in [
            ("L_PAREN", "LPAREN"),
            ("R_PAREN", "RPAREN"),
            ("L_CURLY", "LBRACE"),
            ("R_CURLY", "RBRACE"),
            ("L_BRACKET", "LBRACKET"),
            ("R_BRACKET", "RBRACKET"),
            ("ASSIGN", "EQ"),
            ("DECLARE_ASSIGN", "COLONEQ"),
            ("PLUS_PLUS", "PLUSPLUS"),
            ("MINUS_MINUS", "MINUSMINUS"),
            ("LOGICAL_OR", "OROR"),
            ("LOGICAL_AND", "ANDAND"),
            ("EQUALS", "EQEQ"),
            ("NOT_EQUALS", "NOTEQ"),
            ("LESS_OR_EQUALS", "LTEQ"),
            ("GREATER_OR_EQUALS", "GTEQ"),
            ("LESS", "LT"),
            ("GREATER", "GT"),
            ("DIV", "SLASH"),
            ("MOD", "PERCENT"),
            ("AMPERSAND", "AMP"),
            ("EXCLAMATION", "BANG"),
            ("UNDERLYING", "TILDE"),
            ("OR", "PIPE"),
            ("BIT_CLEAR", "BITCLEAR"),
            ("RECEIVE", "RECEIVE"),
            ("INTERPRETED_STRING_LIT", "STRING"),
            ("RAW_STRING_LIT", "STRING"),
            ("RUNE_LIT", "CHAR_LITERAL"),
            ("DECIMAL_LIT", "NUMBER"),
            ("BINARY_LIT", "NUMBER"),
            ("OCTAL_LIT", "NUMBER"),
            ("HEX_LIT", "NUMBER"),
            ("FLOAT_LIT", "NUMBER"),
            ("IMAGINARY_LIT", "NUMBER"),
        ]:
            rules_block = re.sub(rf"\b{a}\b", b, rules_block)
        # No NLSEMI mode: treat eos as optional explicit ';' only.
        rules_block = re.sub(
            r"    eos ::= .*\n(?:           \| .*\n)*",
            "    eos ::= SEMI\n           | $empty\n",
            rules_block,
            count=1,
        )
        # statementList uses (SEMI|EOS|closingBracket?) before each statement —
        # the predicate becomes empty; keep $empty so '{' stmt '}' works.
        rules_block = re.sub(r"\bEOS\b", "$empty", rules_block)
        # Drop trailing EOF terminals (LPG %Eof handles end).
        rules_block = re.sub(r"\bEOF\b", "", rules_block)
        rules_block = re.sub(r" +$", "", rules_block, flags=re.M)
        rules_block = re.sub(r"  +\n", "\n", rules_block)
        # Collapse "$empty | $empty" etc. via later dedupe.
        # Soft identifiers — keywords are KW-filtered, not alts of identifier.
        rules_block = re.sub(
            r"    identifier ::= IDENTIFIER\n(?:           \| \w+\n)*",
            "    identifier ::= IDENTIFIER\n",
            rules_block,
        )
        go_layered = """    expression ::= goOr

    goOr ::= goAnd
           | goOr OROR goAnd

    goAnd ::= goRel
           | goAnd ANDAND goRel

    goRel ::= goAdd
           | goRel EQEQ goAdd
           | goRel NOTEQ goAdd
           | goRel LT goAdd
           | goRel LTEQ goAdd
           | goRel GT goAdd
           | goRel GTEQ goAdd

    goAdd ::= goMul
           | goAdd PLUS goMul
           | goAdd MINUS goMul
           | goAdd PIPE goMul
           | goAdd CARET goMul

    goMul ::= goUnary
           | goMul STAR goUnary
           | goMul SLASH goUnary
           | goMul PERCENT goUnary
           | goMul LSHIFT goUnary
           | goMul RSHIFT goUnary
           | goMul AMP goUnary
           | goMul BITCLEAR goUnary

    goUnary ::= PLUS goUnary
           | MINUS goUnary
           | BANG goUnary
           | CARET goUnary
           | STAR goUnary
           | AMP goUnary
           | RECEIVE goUnary
           | primaryExpr

"""
        if re.search(r"    expression ::= primaryExpr\n", rules_block):
            rules_block = re.sub(
                r"    expression ::= primaryExpr\n(?:           \| .*\n)+",
                go_layered,
                rules_block,
                count=1,
            )
    elif uid == "rust":
        if "LCURLYBRACE" not in rules_block and re.search(
            r"    expression ::= literalExpression\n", rules_block
        ):
            return rules_block
        rules_block = re.sub(r"\bNON_KEYWORD_IDENTIFIER\b", "IDENTIFIER", rules_block)
        rules_block = re.sub(r"\bRAW_IDENTIFIER\b", "IDENTIFIER", rules_block)
        for a, b in [
            ("LCURLYBRACE", "LBRACE"),
            ("RCURLYBRACE", "RBRACE"),
            ("LSQUAREBRACKET", "LBRACKET"),
            ("RSQUAREBRACKET", "RBRACKET"),
            ("LPAREN", "LPAREN"),
            ("RPAREN", "RPAREN"),
            ("PATHSEP", "COLONCOLON"),
            ("RARROW", "ARROW"),
            ("FATARROW", "FATARROW"),
            ("POUND", "HASH"),
            ("SHLEQ", "LSHIFTEQ"),
            ("SHREQ", "RSHIFTEQ"),
        ]:
            rules_block = re.sub(rf"\b{a}\b", b, rules_block)
        # Drop technical attributed left-recursion (outerAttribute+ expression).
        rules_block = re.sub(
            r"    expression ::= list_\d+ expression\n           \| ",
            "    expression ::= ",
            rules_block,
            count=1,
        )
        rules_block = re.sub(
            r"    expressionWithBlock ::= list_\d+ expressionWithBlock\n           \| ",
            "    expressionWithBlock ::= ",
            rules_block,
            count=1,
        )
        # Soft path identifiers
        rules_block = re.sub(
            r"    identifier ::= IDENTIFIER\n(?:           \| \w+\n)*",
            "    identifier ::= IDENTIFIER\n",
            rules_block,
        )
    elif uid == "cpp":
        if "IDENTIFIER" in rules_block and "LeftParen" not in rules_block:
            return rules_block
        for a, b in [
            ("Identifier", "IDENTIFIER"),
            ("IntegerLiteral", "NUMBER"),
            ("FloatingLiteral", "NUMBER"),
            ("CharacterLiteral", "CHAR_LITERAL"),
            ("StringLiteral", "STRING"),
            ("BooleanLiteral", "BOOL_LITERAL"),
            ("PointerLiteral", "NULLPTR_LIT"),
            ("UserDefinedLiteral", "NUMBER"),
            ("LeftParen", "LPAREN"),
            ("RightParen", "RPAREN"),
            ("LeftBrace", "LBRACE"),
            ("RightBrace", "RBRACE"),
            ("LeftBracket", "LBRACKET"),
            ("RightBracket", "RBRACKET"),
            ("Semi", "SEMI"),
            ("Comma", "COMMA"),
            ("Colon", "COLON"),
            ("Doublecolon", "COLONCOLON"),
            ("Question", "QUESTION"),
            ("Dot", "DOT"),
            ("DotStar", "DOTSTAR"),
            ("Arrow", "ARROW"),
            ("ArrowStar", "ARROWSTAR"),
            ("Ellipsis", "ELLIPSIS"),
            ("Assign", "EQ"),
            ("StarAssign", "STAREQ"),
            ("DivAssign", "SLASHEQ"),
            ("ModAssign", "PERCENTEQ"),
            ("PlusAssign", "PLUSEQ"),
            ("MinusAssign", "MINUSEQ"),
            ("LeftShiftAssign", "LSHIFTEQ"),
            ("RightShiftAssign", "RSHIFTEQ"),
            ("AndAssign", "AMPEQ"),
            ("XorAssign", "CARETEQ"),
            ("OrAssign", "PIPEEQ"),
            ("Equal", "EQEQ"),
            ("NotEqual", "NOTEQ"),
            ("Less", "LT"),
            ("Greater", "GT"),
            ("Lessequal", "LTEQ"),
            ("Greaterequal", "GTEQ"),
            ("Plus", "PLUS"),
            ("Minus", "MINUS"),
            ("Star", "STAR"),
            ("Div", "SLASH"),
            ("Mod", "PERCENT"),
            ("PlusPlus", "PLUSPLUS"),
            ("MinusMinus", "MINUSMINUS"),
            ("AndAnd", "ANDAND"),
            ("OrOr", "OROR"),
            ("And", "AMP"),
            ("Or", "PIPE"),
            ("Caret", "CARET"),
            ("Not", "BANG"),
            ("Tilde", "TILDE"),
            ("LeftShift", "LSHIFT"),
            ("RightShift", "RSHIFT"),
            ("Static_assert", "STATIC_ASSERT"),
            # Java keyword clashes in generated sources
            ("Class", "CLASS_"),
            ("New", "NEW_"),
            ("Delete", "DELETE_"),
            ("This", "THIS_"),
            ("If", "IF_"),
            ("Else", "ELSE_"),
            ("For", "FOR_"),
            ("While", "WHILE_"),
            ("Do", "DO_"),
            ("Switch", "SWITCH_"),
            ("Case", "CASE_"),
            ("Default", "DEFAULT_"),
            ("Break", "BREAK_"),
            ("Continue", "CONTINUE_"),
            ("Return", "RETURN_"),
            ("Goto", "GOTO_"),
            ("Try", "TRY_"),
            ("Catch", "CATCH_"),
            ("Throw", "THROW_"),
            ("Const", "CONST_"),
            ("Volatile", "VOLATILE_"),
            ("Static", "STATIC_"),
            ("Extern", "EXTERN_"),
            ("Inline", "INLINE_"),
            ("Virtual", "VIRTUAL_"),
            ("Explicit", "EXPLICIT_"),
            ("Friend", "FRIEND_"),
            ("Typedef", "TYPEDEF_"),
            ("Using", "USING_"),
            ("Namespace", "NAMESPACE_"),
            ("Template", "TEMPLATE_"),
            ("Typename_", "TYPENAME_"),
            ("Enum", "ENUM_"),
            ("Struct", "STRUCT_"),
            ("Union", "UNION_"),
            ("Public", "PUBLIC_"),
            ("Protected", "PROTECTED_"),
            ("Private", "PRIVATE_"),
            ("Operator", "OPERATOR_"),
            ("Sizeof", "SIZEOF_"),
            ("Alignof", "ALIGNOF_"),
            ("Alignas", "ALIGNAS_"),
            ("Constexpr", "CONSTEXPR_"),
            ("Nullptr", "NULLPTR"),
            ("True_", "TRUE_"),
            ("False_", "FALSE_"),
            ("Auto", "AUTO_"),
            ("Void", "VOID_"),
            ("Bool", "BOOL_"),
            ("Char", "CHAR_"),
            ("Short", "SHORT_"),
            ("Int", "INT_"),
            ("Long", "LONG_"),
            ("Float", "FLOAT_"),
            ("Double", "DOUBLE_"),
            ("Signed", "SIGNED_"),
            ("Unsigned", "UNSIGNED_"),
            ("Typeid_", "TYPEID_"),
            ("Decltype", "DECLTYPE_"),
            ("Noexcept", "NOEXCEPT_"),
            ("Mutable", "MUTABLE_"),
            ("Register", "REGISTER_"),
            ("Asm", "ASM_"),
            ("Export", "EXPORT_"),
            ("Override", "OVERRIDE_"),
            ("Final", "FINAL_"),
            ("Const_cast", "CONST_CAST"),
            ("Dynamic_cast", "DYNAMIC_CAST"),
            ("Reinterpret_cast", "REINTERPRET_CAST"),
            ("Static_cast", "STATIC_CAST"),
        ]:
            rules_block = re.sub(rf"\b{a}\b", b, rules_block)
        # LALR: optional NestedName before * / theTypeName steals IDENTIFIER from
        # declarators (`int x;`). Prefer builtinDeclSeq left-factor for decls/defs.
        rules_block = re.sub(
            r"    pointerOperator ::= grp_\d+ opt_\d+\n           \| opt_\d+ STAR opt_\d+ opt_\d+\n",
            "    pointerOperator ::= grp_po_ref opt_po_attr\n"
            "           | STAR opt_po_cv_attr opt_po_cv\n\n"
            "    grp_po_ref ::= AMP | ANDAND\n\n"
            "    opt_po_attr ::= attributeSpecifierSeq | $empty\n\n"
            "    opt_po_cv_attr ::= attributeSpecifierSeq | $empty\n\n"
            "    opt_po_cv ::= cvQualifierSeq | $empty\n",
            rules_block,
            count=1,
        )
        rules_block = re.sub(
            r"    simpleTypeSpecifier ::= opt_\d+ theTypeName\n",
            "    simpleTypeSpecifier ::= theTypeName\n"
            "           | nestedNameSpecifier theTypeName\n",
            rules_block,
            count=1,
        )
        rules_block = re.sub(
            r"    theTypeName ::= className\n           \| enumName\n           \| typedefName\n           \| simpleTemplateId\n",
            "    theTypeName ::= IDENTIFIER\n           | simpleTemplateId\n",
            rules_block,
            count=1,
        )
        rules_block = re.sub(
            r"    declarator ::= pointerDeclarator\n           \| noPointerDeclarator parametersAndQualifiers opt_\w+\n",
            "    declarator ::= pointerDeclarator\n",
            rules_block,
            count=1,
        )
        rules_block = re.sub(
            r"    initializer ::= braceOrEqualInitializer\n           \| LPAREN expressionList RPAREN\n",
            "    initializer ::= EQ initializerClause\n"
            "           | LPAREN expressionList RPAREN\n",
            rules_block,
            count=1,
        )
        if "builtinDeclSeq ::=" not in rules_block:
            rules_block = re.sub(
                r"    simpleDeclaration ::= opt_\d+ opt_\d+ SEMI\n           \| attributeSpecifierSeq opt_\d+ initDeclaratorList SEMI\n",
                "    simpleDeclaration ::= builtinDeclSeq initDeclaratorList SEMI\n"
                "           | builtinDeclSeq SEMI\n"
                "           | IDENTIFIER initDeclaratorList SEMI\n"
                "           | IDENTIFIER SEMI\n"
                "           | attributeSpecifierSeq opt_104 initDeclaratorList SEMI\n\n"
                "    builtinDeclSeq ::= builtinDecl\n"
                "           | builtinDeclSeq builtinDecl\n\n"
                "    builtinDecl ::= storageClassSpecifier\n"
                "           | cvQualifier\n"
                "           | functionSpecifier\n"
                "           | FRIEND_\n"
                "           | TYPEDEF_\n"
                "           | CONSTEXPR_\n"
                "           | CHAR_\n"
                "           | Char16\n"
                "           | Char32\n"
                "           | Wchar\n"
                "           | BOOL_\n"
                "           | SHORT_\n"
                "           | INT_\n"
                "           | LONG_\n"
                "           | FLOAT_\n"
                "           | SIGNED_\n"
                "           | UNSIGNED_\n"
                "           | DOUBLE_\n"
                "           | VOID_\n"
                "           | AUTO_\n"
                "           | decltypeSpecifier\n",
                rules_block,
                count=1,
            )
            rules_block = re.sub(
                r"    functionDefinition ::= opt_\d+ opt_\d+ declarator opt_\d+ functionBody\n",
                "    functionDefinition ::= builtinDeclSeq declarator opt_208 functionBody\n"
                "           | IDENTIFIER declarator opt_208 functionBody\n"
                "           | attributeSpecifierSeq builtinDeclSeq declarator opt_208 functionBody\n",
                rules_block,
                count=1,
            )
        rules_block = re.sub(
            r"    idExpression ::= unqualifiedId\n",
            "    idExpression ::= unqualifiedId\n           | qualifiedId\n",
            rules_block,
            count=1,
        )
    elif uid == "html":
        # Lexer skips whitespace — drop SEA_WS alts (nullable cycles if $empty).
        rules_block = re.sub(
            r"    scriptletOrSeaWs ::= SCRIPTLET\n           \| SEA_WS\n",
            "    scriptletOrSeaWs ::= SCRIPTLET\n",
            rules_block,
        )
        rules_block = re.sub(
            r"    htmlChardata ::= HTML_TEXT\n           \| SEA_WS\n",
            "    htmlChardata ::= HTML_TEXT\n"
            "           | TAG_NAME\n"
            "           | ATTVALUE_VALUE\n",
            rules_block,
        )
        rules_block = re.sub(
            r"    htmlMisc ::= htmlComment\n           \| SEA_WS\n",
            "    htmlMisc ::= htmlComment\n",
            rules_block,
        )
    elif uid == "antlr/antlr4":
        # Map ANTLRv4Lexer vocabulary onto the generic LPG lexer emissions.
        for a, b in [
            ("STRING_LITERAL", "STRING"),
            ("INT", "NUMBER"),
            ("ASSIGN", "EQ"),
            ("RARROW", "ARROW"),
            ("PLUS_ASSIGN", "PLUSEQ"),
            ("RULE_REF", "IDENTIFIER"),
            ("TOKEN_REF", "IDENTIFIER"),
            ("LEXER_CHAR_SET", "STRING"),
            ("ARGUMENT_CONTENT", "IDENTIFIER"),
            ("BEGIN_ARGUMENT", "LBRACKET"),
            ("END_ARGUMENT", "RBRACKET"),
            ("ACTION", "LBRACE"),
            ("OPTIONS", "IDENTIFIER"),
            ("TOKENS", "IDENTIFIER"),
            ("CHANNELS", "IDENTIFIER"),
            ("POUND", "HASH"),
            ("OR", "PIPE"),
        ]:
            rules_block = re.sub(rf"\b{a}\b", b, rules_block)
        rules_block = re.sub(
            r"    identifier ::= IDENTIFIER\n(?:           \| IDENTIFIER\n)+",
            "    identifier ::= IDENTIFIER\n",
            rules_block,
        )
        # options/tokens/channels in upstream are keyword+'{'; accept soft form.
        rules_block = re.sub(
            r"    optionsSpec ::= IDENTIFIER list_(\d+) RBRACE",
            r"    optionsSpec ::= IDENTIFIER LBRACE list_\1 RBRACE",
            rules_block,
        )
        rules_block = re.sub(
            r"    tokensSpec ::= IDENTIFIER opt_(\d+) RBRACE",
            r"    tokensSpec ::= IDENTIFIER LBRACE opt_\1 RBRACE",
            rules_block,
        )
        rules_block = re.sub(
            r"    channelsSpec ::= IDENTIFIER opt_(\d+) RBRACE",
            r"    channelsSpec ::= IDENTIFIER LBRACE opt_\1 RBRACE",
            rules_block,
        )
    elif uid == "v":
        for a, b in [
            ("STRING_LIT", "STRING"),
            ("INT_LIT", "NUMBER"),
            ("FLOAT_LIT", "NUMBER"),
            ("RAW_STRING_LIT", "STRING"),
            ("INTERPRETED_STRING_LIT", "STRING"),
            ("RUNE_LIT", "CHAR_LITERAL"),
            ("EOS", "SEMI"),
        ]:
            rules_block = re.sub(rf"\b{a}\b", b, rules_block)
        # eos is often NL or ';' — allow empty / SEMI / IDENTIFIER noise drop
        if "eos ::=" in rules_block:
            rules_block = re.sub(
                r"    eos ::= .*\n(?:           \| .*\n)*",
                "    eos ::= SEMI\n           | $empty\n",
                rules_block,
                count=1,
            )
    elif uid in {"solidity", "apex", "idl", "bcpl", "ruleworks", "asm/masm", "vaxscan", "stringtemplate"}:
        for a, b in [
            ("StringLiteral", "STRING"),
            ("STRINGLITERAL", "STRING"),
            ("STRING_LITERAL", "STRING"),
            ("BooleanLiteral", "IDENTIFIER"),
            ("DecimalNumber", "NUMBER"),
            ("DecimalLiteral", "NUMBER"),
            ("IntegerLiteral", "NUMBER"),
            ("HexLiteral", "NUMBER"),
            ("HEX_LITERAL", "NUMBER"),
            ("NUMBER_LITERAL", "NUMBER"),
            ("Identifier", "IDENTIFIER"),
            ("IDENT", "IDENTIFIER"),
            ("NAME", "IDENTIFIER"),
            ("ID", "IDENTIFIER"),
            ("ASSIGN", "EQ"),
            ("EQUALS", "EQ"),
            ("EQUAL", "EQ"),
            ("RARROW", "ARROW"),
            ("LARROW", "RECEIVE"),
            ("LEFT_BRACE", "LBRACE"),
            ("RIGHT_BRACE", "RBRACE"),
            ("LEFT_BRACKET", "LBRACKET"),
            ("RIGHT_BRACKET", "RBRACKET"),
            ("LEFT_SQUARE_BRACKET", "LBRACKET"),
            ("RIGHT_SQUARE_BRACKET", "RBRACKET"),
            ("LEFT_PAREN", "LPAREN"),
            ("RIGHT_PAREN", "RPAREN"),
            ("LEFT_ANG_BRACKET", "LT"),
            ("RIGHT_ANG_BRACKET", "GT"),
            ("SEMICOLON", "SEMI"),
            ("COLONCOLON", "COLONCOLON"),
            ("TOK_LPAREN", "LPAREN"),
            ("TOK_RPAREN", "RPAREN"),
            ("TOK_ARROW", "ARROW"),
            ("TOK_HAT", "CARET"),
            ("LBrace", "LBRACE"),
            ("RBrace", "RBRACE"),
            ("LParen", "LPAREN"),
            ("RParen", "RPAREN"),
            ("LBrack", "LBRACKET"),
            ("RBrack", "RBRACKET"),
            ("String_constant", "STRING"),
            ("Number_constant", "NUMBER"),
            ("Name", "IDENTIFIER"),
            ("WS", ""),  # drop stray WS refs
        ]:
            if b:
                rules_block = re.sub(rf"\b{a}\b", b, rules_block)
            else:
                rules_block = re.sub(rf"\s*\b{a}\b", "", rules_block)
        if uid == "bcpl":
            # bcplLexer uses K-prefixed keyword tokens (KLET, KAND, …)
            for a, b in [
                ("LET", "KLET"),
                ("AND", "KAND"),
                ("VALOF", "KVALOF"),
                ("RESULTIS", "KRESULTIS"),
                ("BE", "KBE"),
                ("DO", "KDO"),
                ("TO", "KTO"),
                ("FOR", "KFOR"),
                ("IF", "KIF"),
                ("UNLESS", "KUNLESS"),
                ("WHILE", "KWHILE"),
                ("UNTIL", "KUNTIL"),
                ("REPEAT", "KREPEAT"),
                ("BREAK", "KBREAK"),
                ("LOOP", "KLOOP"),
                ("ENDCASE", "KENDCASE"),
                ("CASE", "KCASE"),
                ("DEFAULT", "KDEFAULT"),
                ("INTO", "KINTO"),
                ("OR", "KOR"),
                ("GET", "KGET"),
                ("GLOBAL", "KGLOBAL"),
                ("MANIFEST", "KMANIFEST"),
                ("STATIC", "KSTATIC"),
                ("TRUE", "KTRUE"),
                ("FALSE", "KFALSE"),
            ]:
                rules_block = re.sub(rf"\b{a}\b", b, rules_block)
        if uid == "solidity" and "list_pragma_rest ::=" not in rules_block:
            # Pragma line is lexer-special in g4; accept identifier form for subset.
            rules_block = re.sub(
                r"    pragmaDirective ::= .*\n(?:           \| .*\n)*",
                "    pragmaDirective ::= Pragma IDENTIFIER list_pragma_rest SEMI\n\n"
                "    list_pragma_rest ::= $empty | list_pragma_rest IDENTIFIER\n"
                "           | list_pragma_rest NUMBER\n"
                "           | list_pragma_rest CARET\n"
                "           | list_pragma_rest DOT\n"
                "           | list_pragma_rest GT\n"
                "           | list_pragma_rest LT\n"
                "           | list_pragma_rest EQ\n"
                "           | list_pragma_rest STRING\n",
                rules_block,
                count=1,
            )
        if uid == "stringtemplate":
            rules_block = re.sub(r"\bTMPL_ASSIGN\b", "COLONCOLON EQ", rules_block)
            # COLONCOLON EQ is two tokens for '::='
    return rules_block


def dedupe_rule_alts(rules_block: str) -> str:
    """Remove duplicate alternatives within each ::= rule (after token remaps)."""
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
        # Split same-line alts: `grp ::= EQ | EQ`
        alts = [a.strip() for a in first.split("|")] if first else []
        i += 1
        while i < len(lines):
            cont = re.match(r"^\s+\|\s*(.*)$", lines[i].rstrip("\n"))
            if not cont:
                break
            alts.extend(a.strip() for a in cont.group(1).split("|"))
            i += 1
        seen: set[str] = set()
        uniq: list[str] = []
        for a in alts:
            if a and a not in seen:
                seen.add(a)
                uniq.append(a)
        if not uniq:
            uniq = ["$empty"]
        out.append(f"{indent}{name} ::= {uniq[0]}\n")
        for a in uniq[1:]:
            out.append(f"{indent}       | {a}\n")
        # preserve a blank line if next is blank
        if i < len(lines) and lines[i].strip() == "":
            out.append(lines[i])
            i += 1
    return "".join(out)


def emit_parser(uid: str, name: str, pkg: str, start: str, rules_block: str) -> str:
    rules_block = lalr_fix_rules(uid, rules_block)
    rules_block = dedupe_rule_alts(rules_block)
    return f"""-- AUTO-GENERATED from antlr/grammars-v4 {uid} by tools/antlr2lpg.py
-- Structural port + LALR fixups (expression layering). Not token-stream soup.

%Options la=3
%Options fp={name}Parser
%options package={pkg}
%options template=dtParserTemplateF.gi
%options import_terminals={name}Lexer.gi
%options automatic_ast=nested
%options conflicts

%Eof
    EOF_TOKEN
%End

%Start
    {start}
%End

%Rules
{rules_block}
%End
"""


def extract_lexer_keywords(lexer_files: list[Path]) -> list[tuple[str, str]]:
    """Return (TOKEN, spelling) for simple lexer keyword rules TOKEN : 'word';"""
    out: list[tuple[str, str]] = []
    for p in lexer_files:
        text = p.read_text(encoding="utf-8", errors="replace")
        # Allow optional -> channel/mode/... before ';' (Go NLSEMI, etc.)
        for m in re.finditer(
            r"^([A-Za-z_][\w]*)\s*:\s*'([^'\\]+)'\s*(?:->[^;]*)?;",
            text,
            flags=re.M,
        ):
            tok, spell = m.group(1), m.group(2)
            # keywords / reserved words (letters, optionally hyphen like non-sealed)
            if re.fullmatch(r"[A-Za-z][A-Za-z0-9_\-]*", spell):
                out.append((tok, spell))
        # BOOL / null style: TOKEN: 'true' | 'false';
        for m in re.finditer(
            r"^([A-Za-z_][\w]*)\s*:\s*'([^'\\]+)'\s*\|\s*'([^'\\]+)'\s*(?:->[^;]*)?;",
            text,
            flags=re.M,
        ):
            tok, a, b = m.group(1), m.group(2), m.group(3)
            if a.isalpha() and b.isalpha():
                out.append((tok, a))
                out.append((tok, b))
        # Java/Apex case-insensitive style: PUBLIC : P U B L I C ;
        for m in re.finditer(
            r"^([A-Z][A-Z0-9_]*)\s*:\s*((?:[A-Z]\s+)+[A-Z])\s*;",
            text,
            flags=re.M,
        ):
            tok = m.group(1)
            letters = m.group(2).split()
            if letters and all(len(x) == 1 and x.isalpha() for x in letters):
                spell = "".join(letters).lower()
                if spell.isalpha():
                    out.append((tok, spell))
    # dedupe preserve order
    seen: set[tuple[str, str]] = set()
    uniq: list[tuple[str, str]] = []
    for pair in out:
        if pair not in seen:
            seen.add(pair)
            uniq.append(pair)
    return uniq


def emit_kwlexer(name: str, pkg: str, kw_pairs: list[tuple[str, str]]) -> str:
    """kw_pairs: (TOKEN_NAME, spelling) — spelling matched case-insensitively via LowerCase map."""
    if not kw_pairs:
        kw_pairs = [("X", "xxx")]
    # Dedupe by normalized spelling (one Keyword rule per word); first token wins.
    # Allow multiple spellings → same token (true/false → BOOL_LITERAL).
    # Keep hyphens (ruleworks OBJECT-CLASS) as literal '-' in the keyword pattern.
    by_spell: dict[str, str] = {}
    for tok, spell in kw_pairs:
        body = spell.lower()
        if not re.fullmatch(r"[a-z][a-z0-9]*(?:-[a-z0-9]+)*", body):
            continue
        by_spell.setdefault(body, tok)
    exports = sorted(set(by_spell.values()))
    export_block = "\n".join(f"    {e}" for e in exports)
    rule_lines = []
    for body, tok in sorted(by_spell.items(), key=lambda x: (-len(x[0]), x[0])):
        chars = " ".join("Minus" if ch == "-" else ch for ch in body)
        rule_lines.append(f"    Keyword ::= {chars} /.$setResult($_{tok});./")
    if not rule_lines:
        rule_lines = ["    Keyword ::= x x x /.$setResult($_X);./"]
        export_block = "    X"
    rules = "\n".join(rule_lines)
    letters = " ".join(list("abcdefghijklmnopqrstuvwxyz"))
    return f"""-- Keyword filter for {name} (from grammars-v4 lexer keywords + parser literals)
%options package={pkg}
%options template=KeywordTemplateF.gi
%options fp={name}KWLexer

%Include
    KWLexerLowerCaseMapF.gi
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
{rules}
%End
"""


def _lpg_char_lit(ch: str) -> str:
    if ch == "'":
        return "SingleQuote"
    if ch == "\\":
        return "BackSlash"
    if ch == "{":
        return "'{'"
    if ch == "}":
        return "'}'"
    return "'" + ch.replace("\\", "\\\\").replace("'", "\\'") + "'"


def emit_lexer(
    name: str,
    pkg: str,
    lit_map: dict[str, str],
    keyword_tokens: list[str],
    extra_tokens: list[str],
    *,
    id_token: str = "IDENTIFIER",
    number_token: str = "NUMBER",
    string_token: str = "STRING",
    keep_newlines: bool = False,
    newline_token: str = "NEWLINE",
) -> str:
    """Emit a real lexer: multi-char ops, strings, numbers, comments; KW filter for keywords."""
    multi = {lit: tok for lit, tok in lit_map.items() if len(lit) > 1 and not lit.isalpha()}
    # Always include common multi-ops even if unused (harmless if exported)
    for lit, tok in MULTI_OPS.items():
        multi.setdefault(lit, tok)
    single = {lit: tok for lit, tok in lit_map.items() if len(lit) == 1}
    for lit, tok in PUNCT.items():
        single.setdefault(lit, tok)

    exports = set(keyword_tokens) | set(extra_tokens) | set(multi.values()) | set(single.values())
    exports |= {id_token, number_token, string_token, "CHAR_LITERAL"}
    if keep_newlines:
        exports.add(newline_token)
    # Drop junk / unused meta
    exports -= {"TEXT", "CHARSET", "EMPTY_LIT", "NL", "CR", "HT", "FF"}
    # INDENT/DEDENT are not produced by this lexer (documented limitation for Python)
    exports -= {"INDENT", "DEDENT"}

    export_block = "\n".join(f"    {e}" for e in sorted(exports))

    # Longest-first multi-char operator rules
    op_lines = []
    for lit, tok in sorted(multi.items(), key=lambda x: (-len(x[0]), x[0])):
        if not all(ord(c) < 128 and (c.isprintable() or c in "\t") for c in lit):
            continue
        if any(c.isspace() for c in lit):
            continue
        parts = " ".join(_lpg_char_lit(c) if len(c) == 1 else f"'{c}'" for c in lit)
        # Use character terminals for each char
        chars = []
        for c in lit:
            if c == "'":
                chars.append("SingleQuote")
            elif c == "\\":
                chars.append("BackSlash")
            else:
                chars.append("'" + c + "'")
        op_lines.append(f"            | {' '.join(chars)} /. makeToken($_{tok}); ./")

    single_lines = []
    for lit, tok in sorted(single.items(), key=lambda x: x[0]):
        if lit in multi or len(lit) != 1:
            continue
        # Do not emit alnum/_/$ as punct — they belong to identifier/number.
        if lit.isalnum() or lit in "$_'":
            continue
        single_lines.append(f"            | '{lit}' /. makeToken($_{tok}); ./")

    if keep_newlines:
        ws_rule = f"""            | SpaceSpace /. skipToken(); ./
            | LF /. makeToken($_{newline_token}); ./
            | CR /. makeToken($_{newline_token}); ./"""
        white_def = """    white -> Space | HT | FF
           | white Space
           | white HT
           | white FF
"""
    else:
        ws_rule = "            | white /. skipToken(); ./"
        white_def = """    white -> WSChar
           | white WSChar
    WSChar -> Space | LF | CR | HT | FF
"""

    return f"""-- Real lexer for {name}Parser (not token-stream soup). Keywords via {name}KWLexer.
%Options list
%Options fp={name}Lexer
%options single_productions
%options conflicts
%options package={pkg}
%options template=LexerTemplateF.gi
%options filter={name}KWLexer.gi

%Define
    $kw_lexer_class /.${name}KWLexer./
%End

%Include
    LexerBasicMapF.gi
%End

%Export
{export_block}
%End

%Terminals
    CtlCharNotWS

    LF   CR   HT   FF

    a    b    c    d    e    f    g    h    i    j    k    l    m
    n    o    p    q    r    s    t    u    v    w    x    y    z
    _

    A    B    C    D    E    F    G    H    I    J    K    L    M
    N    O    P    Q    R    S    T    U    V    W    X    Y    Z

    0    1    2    3    4    5    6    7    8    9

    AfterASCII   ::= '\\u0080..\\ufffe'
    Space        ::= ' '
    LF           ::= NewLine
    CR           ::= Return
    HT           ::= HorizontalTab
    FF           ::= FormFeed
    DoubleQuote  ::= '"'
    SingleQuote  ::= "'"
    Percent      ::= '%'
    VerticalBar  ::= '|'
    Exclamation  ::= '!'
    AtSign       ::= '@'
    BackQuote    ::= '`'
    Tilde        ::= '~'
    Sharp        ::= '#'
    DollarSign   ::= '$'
    Ampersand    ::= '&'
    Caret        ::= '^'
    Colon        ::= ':'
    SemiColon    ::= ';'
    BackSlash    ::= '\\'
    LeftBrace    ::= '{{'
    RightBrace   ::= '}}'
    LeftBracket  ::= '['
    RightBracket ::= ']'
    QuestionMark ::= '?'
    Comma        ::= ','
    Dot          ::= '.'
    LessThan     ::= '<'
    GreaterThan  ::= '>'
    Plus         ::= '+'
    Minus        ::= '-'
    Slash        ::= '/'
    Star         ::= '*'
    Equal        ::= '='
    LeftParen    ::= '('
    RightParen   ::= ')'
%End

%Start
    Token
%End

%Rules
    Token ::= identifier /. checkForKeyWord(); ./
            | number     /. makeToken($_{number_token}); ./
            | string     /. makeToken($_{string_token}); ./
            | LineComment /. skipToken(); ./
            | HashComment /. skipToken(); ./
{ws_rule}
{chr(10).join(op_lines)}
{chr(10).join(single_lines)}

    identifier -> Letter
                | identifier Letter
                | identifier Digit
                | identifier '-' Letter
                | identifier '-' Digit

    Letter -> LowerCaseLetter
            | UpperCaseLetter
            | _
            | AfterASCII
            | DollarSign

    LowerCaseLetter -> a | b | c | d | e | f | g | h | i | j | k | l | m |
                       n | o | p | q | r | s | t | u | v | w | x | y | z

    UpperCaseLetter -> A | B | C | D | E | F | G | H | I | J | K | L | M |
                       N | O | P | Q | R | S | T | U | V | W | X | Y | Z

    Digit -> 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9

    number ::= Digit
             | number Digit
             | number '_' Digit
             | number '.' Digit
             | number '.' Digits
             | '.' Digits

    Digits ::= Digit
             | Digits Digit

    string ::= '"' SLBody '"'
             | SingleQuote SLBodySQ SingleQuote

    SLBody -> $empty
            | SLBody NotDQ

    SLBodySQ -> $empty
              | SLBodySQ NotSQ

    NotDQ -> Letter | Digit | Space | HT | SingleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{{' | '}}' | '<' | '>' | Escape

    NotSQ -> Letter | Digit | Space | HT | DoubleQuote | ',' | '.' | ':' | ';' | '+' | '-' |
             '*' | '/' | '=' | '_' | '!' | '?' | '@' | '#' | '$' | '%' | '&' | '|' |
             '^' | '~' | '`' | '(' | ')' | '[' | ']' | '{{' | '}}' | '<' | '>' | Escape

    Escape ::= BackSlash EscapeChar
    EscapeChar -> DoubleQuote | SingleQuote | BackSlash | '/' | n | r | t | b | f

    LineComment ::= '/' '/' LineCommentBody
    HashComment ::= Sharp HashCommentBody
    HashCommentBody -> $empty
                     | HashCommentBody NotNL
    LineCommentBody -> $empty
                     | LineCommentBody NotNL
    NotNL -> Letter | Digit | Space | HT | SpecialNotNL
    SpecialNotNL -> '+' | '-' | '/' | '*' | '(' | ')' | '!' | '@' | '`' | '~' |
                    '%' | '&' | '^' | ':' | ';' | DoubleQuote | SingleQuote | '|' | '{{' | '}}' |
                    '[' | ']' | '?' | ',' | '.' | '<' | '>' | '=' | '#' | '$' | '_' | BackSlash

{white_def}%End
"""


def convert_unit(uid: str, v4_root: Path, dest_root: Path, force: bool = True) -> dict:
    v4_unit = v4_root / uid
    if not v4_unit.is_dir():
        return {"id": uid, "ok": False, "error": "missing v4 unit"}
    parser_files, lexer_files = find_g4_files(v4_unit)
    if not parser_files:
        return {"id": uid, "ok": False, "error": "no g4"}
    text = "\n".join(p.read_text(encoding="utf-8", errors="replace") for p in parser_files)
    # also include lexer file token names as uppercase rules we ignore for parser
    body = strip_antlr_noise(text)
    rules = split_rules(body)
    # drop pure lexer rules (ALLCAPS names) from parser conversion input list already handled
    lit_map: dict[str, str] = {}
    rules_block, start = convert_parser_rules(rules, lit_map, PREFERRED_START.get(uid))
    if not rules_block.strip():
        return {"id": uid, "ok": False, "error": "no parser rules extracted"}

    name = java_name(uid)
    pkg = pkg_name(uid)
    dest = dest_root / uid
    dest.mkdir(parents=True, exist_ok=True)
    # Remove stale alternate stems (e.g. Python3Parser.g vs PythonPython3Parser.g)
    for stale in dest.glob("*Parser.g"):
        if stale.name != f"{name}Parser.g":
            stale.unlink(missing_ok=True)

    # Keywords from lexer .g4 + letter literals in parser
    kw_pairs = extract_lexer_keywords(lexer_files)
    for lit, tok in lit_map.items():
        if re.fullmatch(r"[A-Za-z][A-Za-z0-9_\-]*", lit or ""):
            kw_pairs.append((tok, lit))

    # LexerTemplateF hardcodes $_IDENTIFIER as the non-keyword identifier kind.
    id_token = "IDENTIFIER"
    number_token = "NUMBER"
    string_token = "STRING"
    keep_newlines = False
    newline_token = "NEWLINE"
    if uid.startswith("java/"):
        number_token = "DECIMAL_LITERAL"
        string_token = "STRING_LITERAL"
        # Antlr Java* uses Identifier / *Literal; LexerTemplateF emits IDENTIFIER / DECIMAL_LITERAL / STRING_LITERAL.
        rules_block = re.sub(r"\bIdentifier\b", "IDENTIFIER", rules_block)
        rules_block = re.sub(r"\bIntegerLiteral\b", "DECIMAL_LITERAL", rules_block)
        rules_block = re.sub(r"\bFloatingPointLiteral\b", "DECIMAL_LITERAL", rules_block)
        rules_block = re.sub(r"\bStringLiteral\b", "STRING_LITERAL", rules_block)
        rules_block = re.sub(r"\bCharacterLiteral\b", "CHAR_LITERAL", rules_block)
    elif uid.startswith("javascript/"):
        # Antlr JS uses Identifier / DecimalLiteral / StringLiteral + PascalCase punct
        rules_block = re.sub(r"\bIdentifier\b", "IDENTIFIER", rules_block)
        rules_block = re.sub(r"\bDecimalLiteral\b", "NUMBER", rules_block)
        rules_block = re.sub(r"\bStringLiteral\b", "STRING", rules_block)
        rules_block = re.sub(r"\bNullLiteral\b", "NULL_LITERAL", rules_block)
        rules_block = re.sub(r"\bBooleanLiteral\b", "BOOL_LITERAL", rules_block)
        for a, b in [
            ("SemiColon", "SEMI"),
            ("OpenParen", "LPAREN"),
            ("CloseParen", "RPAREN"),
            ("OpenBrace", "LBRACE"),
            ("CloseBrace", "RBRACE"),
            ("OpenBracket", "LBRACKET"),
            ("CloseBracket", "RBRACKET"),
            ("Comma", "COMMA"),
            ("Colon", "COLON"),
            ("Dot", "DOT"),
            ("Assign", "EQ"),
            ("QuestionMark", "QUESTION"),
            ("Ellipsis", "ELLIPSIS"),
            ("PlusPlus", "PLUSPLUS"),
            ("MinusMinus", "MINUSMINUS"),
            ("Plus", "PLUS"),
            ("Minus", "MINUS"),
            ("BitNot", "TILDE"),
            ("Not", "BANG"),
            ("Multiply", "STAR"),
            ("Divide", "SLASH"),
            ("Modulus", "PERCENT"),
            ("Power", "STARSTAR"),
            ("NullCoalesce", "QUESTQUEST"),
            ("Hashtag", "HASH"),
            ("RightShiftArithmetic", "RSHIFT"),
            ("LeftShiftArithmetic", "LSHIFT"),
            ("RightShiftLogical", "URSHIFT"),
            ("LessThan", "LT"),
            ("MoreThan", "GT"),
            ("LessThanEquals", "LTEQ"),
            ("GreaterThanEquals", "GTEQ"),
            ("Equals_", "EQEQ"),
            ("NotEquals", "NOTEQ"),
            ("IdentityEquals", "EQEQEQ"),
            ("IdentityNotEquals", "NOTEQEQ"),
            ("BitAnd", "AMP"),
            ("BitXOr", "CARET"),
            ("BitOr", "PIPE"),
            ("And", "ANDAND"),
            ("Or", "OROR"),
            ("MultiplyAssign", "STAREQ"),
            ("DivideAssign", "SLASHEQ"),
            ("ModulusAssign", "PERCENTEQ"),
            ("PlusAssign", "PLUSEQ"),
            ("MinusAssign", "MINUSEQ"),
            ("BitAndAssign", "AMPEQ"),
            ("BitXorAssign", "CARETEQ"),
            ("BitOrAssign", "PIPEEQ"),
            ("PowerAssign", "STARSTAREQ"),
            ("ARROW", "FATARROW"),
            ("This", "THIS"),
            ("New", "NEW"),
            ("Typeof", "TYPEOF"),
            ("Void", "VOID"),
            ("Delete", "DELETE"),
            ("Await", "AWAIT"),
        ]:
            rules_block = re.sub(rf"\b{a}\b", b, rules_block)
        number_token = "NUMBER"
        string_token = "STRING"
        kw_pairs = [(t, s) for t, s in kw_pairs if t not in ("NullLiteral", "BooleanLiteral")]
        kw_pairs.extend(
            [("NULL_LITERAL", "null"), ("BOOL_LITERAL", "true"), ("BOOL_LITERAL", "false")]
        )
        rules_block = re.sub(r"\bClass\b", "CLASS_", rules_block)
        kw_pairs = [(("CLASS_" if tok == "Class" else tok), s) for tok, s in kw_pairs]
    elif uid.startswith("python/"):
        rules_block = re.sub(r"\bNAME\b", "IDENTIFIER", rules_block)
        number_token = "DECIMAL_INTEGER" if uid == "python/python" else "NUMBER"
        string_token = "STRING"
        keep_newlines = True
        # python/python g4 uses LINE_BREAK; others use NEWLINE
        newline_token = "LINE_BREAK" if uid == "python/python" else "NEWLINE"
        # INDENT/DEDENT not emitted by lexer — make them optional in parser rules
        rules_block = re.sub(r"\bINDENT\b", "indent_opt", rules_block)
        rules_block = re.sub(r"\bDEDENT\b", "dedent_opt", rules_block)
        rules_block += "\n    indent_opt ::= $empty\n\n    dedent_opt ::= $empty\n"
        rules_block = re.sub(r"\s*\bENDMARKER\b", "", rules_block)
        # Lexer keyword rules named *_stmt must not become terminals (clash with parser NTs)
        _kw_fix = {"pass_stmt": "PASS", "break_stmt": "BREAK", "continue_stmt": "CONTINUE",
                     "print_stmt": "PRINT", "exec_stmt": "EXEC", "assert_stmt": "ASSERT",
                     "global_stmt": "GLOBAL", "nonlocal_stmt": "NONLOCAL",
                     "return_stmt": "RETURN", "raise_stmt": "RAISE", "yield_stmt": "YIELD",
                     "import_stmt": "IMPORT", "del_stmt": "DEL"}
        kw_pairs = [(_kw_fix.get(t, t), s) for t, s in kw_pairs]
    elif uid == "golang":
        number_token = "NUMBER"
        string_token = "STRING"
    elif uid == "rust":
        number_token = "INTEGER_LITERAL"
        string_token = "STRING_LITERAL"
    elif uid == "cpp":
        number_token = "NUMBER"
        string_token = "STRING"
    elif uid == "html":
        number_token = "NUMBER"
        string_token = "ATTVALUE_VALUE"

    # LALR remaps (Go/Rust/C++ token vocabulary) before collecting extras / KW renames.
    rules_block = lalr_fix_rules(uid, rules_block)

    if uid == "cpp":
        rename = {
            "Class": "CLASS_",
            "New": "NEW_",
            "Delete": "DELETE_",
            "This": "THIS_",
            "If": "IF_",
            "Else": "ELSE_",
            "For": "FOR_",
            "While": "WHILE_",
            "Do": "DO_",
            "Switch": "SWITCH_",
            "Case": "CASE_",
            "Default": "DEFAULT_",
            "Break": "BREAK_",
            "Continue": "CONTINUE_",
            "Return": "RETURN_",
            "Goto": "GOTO_",
            "Try": "TRY_",
            "Catch": "CATCH_",
            "Throw": "THROW_",
            "Const": "CONST_",
            "Volatile": "VOLATILE_",
            "Static": "STATIC_",
            "Extern": "EXTERN_",
            "Inline": "INLINE_",
            "Virtual": "VIRTUAL_",
            "Explicit": "EXPLICIT_",
            "Friend": "FRIEND_",
            "Typedef": "TYPEDEF_",
            "Using": "USING_",
            "Namespace": "NAMESPACE_",
            "Template": "TEMPLATE_",
            "Typename_": "TYPENAME_",
            "Enum": "ENUM_",
            "Struct": "STRUCT_",
            "Union": "UNION_",
            "Public": "PUBLIC_",
            "Protected": "PROTECTED_",
            "Private": "PRIVATE_",
            "Operator": "OPERATOR_",
            "Sizeof": "SIZEOF_",
            "Alignof": "ALIGNOF_",
            "Alignas": "ALIGNAS_",
            "Constexpr": "CONSTEXPR_",
            "Nullptr": "NULLPTR",
            "True_": "TRUE_",
            "False_": "FALSE_",
            "Auto": "AUTO_",
            "Void": "VOID_",
            "Bool": "BOOL_",
            "Char": "CHAR_",
            "Short": "SHORT_",
            "Int": "INT_",
            "Long": "LONG_",
            "Float": "FLOAT_",
            "Double": "DOUBLE_",
            "Signed": "SIGNED_",
            "Unsigned": "UNSIGNED_",
            "Typeid_": "TYPEID_",
            "Decltype": "DECLTYPE_",
            "Noexcept": "NOEXCEPT_",
            "Mutable": "MUTABLE_",
            "Register": "REGISTER_",
            "Asm": "ASM_",
            "Export": "EXPORT_",
            "Override": "OVERRIDE_",
            "Final": "FINAL_",
            "Const_cast": "CONST_CAST",
            "Dynamic_cast": "DYNAMIC_CAST",
            "Reinterpret_cast": "REINTERPRET_CAST",
            "Static_cast": "STATIC_CAST",
        }
        kw_pairs = [(rename.get(t, t), s) for t, s in kw_pairs]
        kw_pairs = [(t, s) for t, s in kw_pairs if t not in ("TRUE_", "FALSE_", "BOOL_LITERAL")]
        kw_pairs.extend([("TRUE_", "true"), ("FALSE_", "false"), ("NULLPTR", "nullptr")])
    elif uid == "golang":
        # Ensure common statement keywords are filtered (mode arrows used to miss them).
        for tok, spell in [
            ("BREAK", "break"),
            ("CONTINUE", "continue"),
            ("RETURN", "return"),
            ("FALLTHROUGH", "fallthrough"),
            ("NIL_LIT", "nil"),
            ("ELSE", "else"),
            ("PACKAGE", "package"),
        ]:
            if (tok, spell) not in kw_pairs:
                kw_pairs.append((tok, spell))

    # Terminals referenced by parser after remaps
    extra_tokens = sorted(
        {
            m
            for m in re.findall(r"\b([A-Z][A-Za-z0-9_]*)\b", rules_block)
            if m
            not in {
                "EOF",
                "EOF_TOKEN",
                "LPG",
                "AUTO",
                "GENERATED",
            }
        }
    )
    keyword_token_names = sorted({t for t, _ in kw_pairs})

    # emit_parser also calls lalr_fix_rules — keep idempotent for layered exprs.
    parser_text = emit_parser(uid, name, pkg, start, rules_block)
    if uid.startswith("python/"):
        parser_text = (
            "-- LIMITATION: INDENT/DEDENT are optional ($empty); lexer does not track indentation.\n"
            "-- NEWLINE is significant; curated examples avoid indent-sensitive suites where needed.\n"
            + parser_text
        )

    (dest / f"{name}Parser.g").write_text(parser_text, encoding="utf-8")
    # HTML uses a hand-tuned mode-approximating lexer; do not clobber it.
    if uid != "html":
        (dest / f"{name}Lexer.gi").write_text(
            emit_lexer(
                name,
                pkg,
                lit_map,
                keyword_token_names,
                extra_tokens,
                id_token=id_token,
                number_token=number_token,
                string_token=string_token,
                keep_newlines=keep_newlines,
                newline_token=newline_token,
            ),
            encoding="utf-8",
        )
        (dest / f"{name}KWLexer.gi").write_text(
            emit_kwlexer(name, pkg, kw_pairs), encoding="utf-8"
        )

    # examples: prefer existing curated; else copy small files from v4
    ex_dest = dest / "examples"
    curated = dest / "examples-curated"
    v4_ex = v4_unit / "examples"
    if not curated.is_dir() or not any(curated.rglob("*")):
        if v4_ex.is_dir():
            ex_dest.mkdir(exist_ok=True)
            # copy up to 20 small files
            copied = 0
            for p in sorted(v4_ex.rglob("*")):
                if not p.is_file() or p.suffix == ".tree":
                    continue
                if p.stat().st_size > 80_000:
                    continue
                rel = p.relative_to(v4_ex)
                target = ex_dest / rel
                target.parent.mkdir(parents=True, exist_ok=True)
                if not target.exists():
                    target.write_bytes(p.read_bytes())
                copied += 1
                if copied >= 15:
                    break

    if curated.is_dir() and any(curated.iterdir()):
        if uid.startswith("java/"):
            globs = ["examples-curated/**/*.java"]
        elif uid.startswith("javascript/"):
            globs = ["examples-curated/**/*.js"]
        elif uid.startswith("python/"):
            globs = ["examples-curated/**/*.py"]
        elif uid == "golang":
            globs = ["examples-curated/**/*.go"]
        elif uid == "rust":
            globs = ["examples-curated/**/*.rs"]
        elif uid == "cpp":
            globs = ["examples-curated/**/*.{c,cc,cpp,h,hpp}"]
        elif uid == "html":
            globs = ["examples-curated/**/*.html"]
        else:
            globs = ["examples-curated/**/*"]
    else:
        globs = ["examples/**/*"]
    harness = {
        "package": pkg,
        "lexer": f"{name}Lexer",
        "parser": f"{name}Parser",
        "example_globs": globs,
    }
    (dest / "harness.json").write_text(json.dumps(harness, indent=2) + "\n", encoding="utf-8")
    readme = dest / "README.md"
    readme.write_text(
        f"# {uid}\n\nAuto-ported from antlr/grammars-v4 `{uid}` via `tools/antlr2lpg.py`.\n\n"
        f"Structural rule transfer (EBNF expanded). May need LALR conflict fixes.\n"
        f"Start symbol: `{start}`.\n",
        encoding="utf-8",
    )
    # count rules roughly
    n_rules = len(re.findall(r"^\s*\w+\s*::=", rules_block, re.M))
    status = {
        "id": uid,
        "quality": "language_subset",
        "parse_ok": False,
        "status": "regenerated_from_g4",
        "blockers": [],
        "quality_notes": ["antlr2lpg_structural_port"],
        "parser_bytes": (dest / f"{name}Parser.g").stat().st_size,
        "rule_approx": n_rules,
        "start": start,
    }
    (dest / "status.json").write_text(json.dumps(status, indent=2) + "\n", encoding="utf-8")
    return {
        "id": uid,
        "ok": True,
        "start": start,
        "rules": n_rules,
        "parser_bytes": status["parser_bytes"],
        "literals": len(lit_map),
    }


def convert_g4_file(g4_path: Path, dest: Path) -> dict:
    """One-shot convert of a single Antlr .g4 into dest/*Parser.g (+ lexer stubs).

    Used by `lpg2 from-antlr <file.g4> -o <dir>`. Sibling *Lexer.g4 is picked up
    when present next to the parser grammar.
    """
    g4_path = g4_path.resolve()
    if not g4_path.is_file():
        return {"id": str(g4_path), "ok": False, "error": "missing g4 file"}
    dest = dest.resolve()
    dest.mkdir(parents=True, exist_ok=True)

    stem = g4_path.stem
    # FooParser.g4 → uid/name Foo; Foo.g4 → Foo
    if stem.endswith("Parser"):
        base = stem[: -len("Parser")]
    else:
        base = stem
    uid = base.lower() or "grammar"
    name = java_name(uid) if base != java_name(uid) else (base[0].upper() + base[1:] if base else "Grammar")
    # Prefer a clean PascalCase from the file stem.
    name = re.sub(r"[^A-Za-z0-9_]", "", stem.replace("Parser", "") or "Grammar")
    if not name:
        name = "Grammar"
    if name[0].isdigit():
        name = "G" + name
    pkg = pkg_name(uid)

    lexer_files: list[Path] = []
    for cand in (
        g4_path.with_name(f"{name}Lexer.g4"),
        g4_path.with_name(f"{base}Lexer.g4"),
        g4_path.with_name(stem.replace("Parser", "Lexer") + ".g4"),
    ):
        if cand.is_file() and cand not in lexer_files:
            lexer_files.append(cand)

    text = g4_path.read_text(encoding="utf-8", errors="replace")
    body = strip_antlr_noise(text)
    rules = split_rules(body)
    lit_map: dict[str, str] = {}
    rules_block, start = convert_parser_rules(rules, lit_map, None)
    if not rules_block.strip():
        return {"id": uid, "ok": False, "error": "no parser rules extracted"}

    kw_pairs = extract_lexer_keywords(lexer_files)
    for lit, tok in lit_map.items():
        if re.fullmatch(r"[A-Za-z][A-Za-z0-9_\-]*", lit or ""):
            kw_pairs.append((tok, lit))

    extra_tokens = sorted(
        {
            m
            for m in re.findall(r"\b([A-Z][A-Za-z0-9_]*)\b", rules_block)
            if m not in {"EOF", "EOF_TOKEN", "LPG", "AUTO", "GENERATED"}
        }
    )
    keyword_token_names = sorted({t for t, _ in kw_pairs})

    parser_text = emit_parser(uid, name, pkg, start, rules_block)
    (dest / f"{name}Parser.g").write_text(parser_text, encoding="utf-8")
    (dest / f"{name}Lexer.gi").write_text(
        emit_lexer(
            name,
            pkg,
            lit_map,
            keyword_token_names,
            extra_tokens,
        ),
        encoding="utf-8",
    )
    (dest / f"{name}KWLexer.gi").write_text(
        emit_kwlexer(name, pkg, kw_pairs), encoding="utf-8"
    )
    (dest / "README.md").write_text(
        f"# {name}\n\nConverted from `{g4_path.name}` via `tools/antlr2lpg.py --g4`.\n\n"
        f"Structural port only. Start symbol: `{start}`.\n",
        encoding="utf-8",
    )
    n_rules = len(re.findall(r"^\s*\w+\s*::=", rules_block, re.M))
    print(
        "OK",
        uid,
        {
            "ok": True,
            "start": start,
            "rules": n_rules,
            "parser": str(dest / f"{name}Parser.g"),
        },
    )
    return {
        "id": uid,
        "ok": True,
        "start": start,
        "rules": n_rules,
        "parser": str(dest / f"{name}Parser.g"),
        "literals": len(lit_map),
    }


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("ids", nargs="*", help="grammar ids; default: under-ported from catalog")
    ap.add_argument("--v4-root", type=Path, default=V4_DEFAULT)
    ap.add_argument("--dest", type=Path, default=ROOT)
    ap.add_argument("--g4", type=Path, default=None, help="convert a single .g4 file into --dest")
    ap.add_argument("--max-g4-bytes", type=int, default=80_000, help="skip huge grammars unless listed")
    ap.add_argument("--include-huge", action="store_true")
    ap.add_argument("--limit", type=int, default=0)
    args = ap.parse_args()

    if args.g4 is not None:
        r = convert_g4_file(args.g4, args.dest)
        return 0 if r.get("ok") else 1

    cat = json.loads((ROOT / "catalog.json").read_text(encoding="utf-8"))
    ids = list(args.ids)
    if not ids:
        for g in cat["grammars"]:
            if g.get("quality") == "legacy" or not g.get("source_ref"):
                continue
            uid = g["id"]
            unit = ROOT / uid
            parsers = list(unit.glob("*Parser.g"))
            psz = max((p.stat().st_size for p in parsers), default=0)
            soup = False
            if parsers:
                t = parsers[0].read_text(encoding="utf-8", errors="replace")
                soup = "nested token stream" in t or "AUTO-GENERATED from antlr" in t and psz < 500
                soup = soup or "nested token stream" in t
            # regenerate if soup or tiny relative to g4
            g4b = g.get("g4_bytes") or 0
            if soup or psz < 2000 or (g4b and psz < g4b * 0.15):
                if not args.include_huge and g4b > args.max_g4_bytes:
                    continue
                ids.append(uid)
    if args.limit:
        ids = ids[: args.limit]

    results = []
    for uid in ids:
        try:
            r = convert_unit(uid, args.v4_root, args.dest)
        except Exception as e:
            r = {"id": uid, "ok": False, "error": str(e)}
        results.append(r)
        print(("OK" if r.get("ok") else "FAIL"), uid, r)
    ok = sum(1 for r in results if r.get("ok"))
    print(f"done ok={ok}/{len(results)}")
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
