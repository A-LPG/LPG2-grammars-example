#!/usr/bin/env python3
"""Classify each unit's port quality and rewrite status.json + catalog.json.

quality levels:
  language_port      — real language-shaped grammar, multi-example or rich rules
  language_subset    — intentional curated subset (not token soup)
  token_stream_smoke — generic nested token-stream / single smoke
  legacy             — pre-v4 LPG grammars
  unknown            — cannot classify
"""
from __future__ import annotations

import json
import re
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
V4_MARKER = re.compile(r"/grammars-v4-master/|/grammars-v4/")
TOKEN_STREAM = re.compile(
    r"nested token stream|item ::= atom\s*\n\s*\| paren|Generated parse-level parser",
    re.I | re.M,
)
CURATED = re.compile(r"curated (subset|Wave)|Wave [ABCD].*subset|smoke-level", re.I)
PORTED = re.compile(r"Ported from antlr|antlr/grammars-v4", re.I)

# Known real / near-real ports (hand-maintained allowlist boosts)
FORCE_PORT = {
    "lrc",
    "qif",
    "graphstream-dgs",
    "miniscript",
    "turtle-doc",
    "angelscript",
    "snobol",
    "json",
    "json5",
    "csv",
    "calculator",
    "java/java",
    "abnf",
    "alloy",
    "gml",
    "lisp",
    "edn",
    "sexpression",
    "postalcode",
    "tsv",
    "toml",  # may be subset; reclassified below by heuristics
    "aterm",
    "itn",
    "pbm",
    "esolang/bio",
    "recfile",
    "callable",
    "esolang/wheel",
    "mckeeman-form",
    # small complete g4 real ports (REAL_PORT.md)
    "trac",
    "lcc",
    "xyz",
    "telephone",
    "semver",
    "pmmn",
    "stellaris",
    "cookie",
    "fdo91",
    "szf",
    # next-15 soup real ports (g4_lines 414–489)
    "angelscript",
    "snobol",
    "turtle-doc",
    "pike",
    "yara",
    "argus",
    "spass",
    "limbo",
    "gvpr",
    "velocity",
    "langium",
    "oberon",
    "restructuredtext",
    "action",
    "joss",
    # widen batch: full examples harness + structural g4 ports
    "rpn",
    "lambda",
    "newick",
    "fasta",
    "bibcode",
    "doiurl",
    "flatbuffers",
    "gtin",
    "metric",
    "molecule",
    "propcalc",
    "wln",
    "dice",
}
FORCE_SUBSET = {
    "plantUML",
    "swift-fin",
    "freedesktop/desktop-entry",
    "pegen",
    "xsd-regex",
    "asm/pdp7",
    "rego",
    "moo",
    "sql/plsql",
    "sql/tsql",
    "sql/postgresql",
    "sql/sqlite",
    "sql/athena",
    "sql/clickhouse",
    "sql/cockroachdb",
    "sql/databricks",
    "sql/derby",
    "sql/drill",
    "sql/hive/v2",
    "sql/hive/v3",
    "sql/hive/v4",
    "sql/informix-sql",
    "sql/mariadb",
    "sql/mysql/Oracle",
    "sql/mysql/Positive-Technologies",
    "sql/phoenix",
    "sql/snowflake",
    "sql/starrocks",
    "sql/teradata",
    "sql/trino",
    "verilog/systemverilog",
    "csharp/v8-spec",
    "kotlin/kotlin",
    "c",
    "lua",
    "peoplecode",
    # next-20 soup real ports (skip smallest 20 by g4_lines; curated subsets)
    "scss",
    "webidl",
    "odin",
    "xpath/xpath31",
    "tnsnames",
    "pascal",
    "pcre",
    "rexx",
    "kuka",
    "arden",
    "logo/ucb-logo",
    "antlr/antlr4",
    "codeql",
    "lpc",
    "algol60",
    "kirikiri-tjs",
    "powerbuilder",
    # Intentional LALR / dialect subsets of full grammars-v4
    "bnf",
    "vmf",
    "tl",   # ASCII stand-ins for Unicode operators
    "pii",  # real g4 rules; only one upstream example
    # REAL_PORT soup batch by g4_lines (532–716)
    "awk",
    "evm-bytecode",
    "mumps",
    "atl",
    "asm/asmRISCV",
    "bison",
    "asm/asmMASM",
    "alef",
    "modula2pim4",
    "python/python2",
    "less",
    "protobuf/protobuf3",
    "python/python2-js",
    "asm/ptx/ptx-isa-1.0",
    "amazon-states-language",
    "antlr/antlr2",
    "antlr/antlr3",
    "protobuf/protobuf2",
    "fusion-tables",
    # REAL_PORT soup half-2 (alpha second half of remaining nested soups)
    "java/java20",
    "java/java8",
    "java/java9",
    "javascript/ecmascript",
    "javascript/jsx",
    "kotlin/kotlin-formal",
    "llvm-ir",
    "objc",
    "python/python",
    "python/python3_13",
    "redis",
    "ruleworks",
    "scala/scala3",
    "sdl",
    "sharc",
    "smtlibv2",
    "solidity",
    "stringtemplate",
    "swift/swift2",
    "swift/swift3",
    "swift/swift5",
    "sysml-v2",
    "unicode/unicode16",
    "unreal_angelscript",
    "v",
    "vaxscan",
    "vb6",
    "vba/vba6",
    "vba/vba7_1",
    "verilog/verilog",
    "vhdl/vhdl",
    "vhdl/vhdl2008",
    "z",
    "zig",
}
# Hand-verified real .g4 ports (not nested token-stream). Adds quality_notes entry.
REAL_G4_PORT = FORCE_PORT | FORCE_SUBSET | {
    "lisp",
    "tsv",
}


def parser_files(unit: Path) -> list[Path]:
    return [p for p in unit.glob("*Parser.g") if p.is_file()]


def example_files(unit: Path, harness: dict) -> list[Path]:
    globs = harness.get("example_globs") or ["examples/**/*"]
    files: list[Path] = []
    seen = set()
    for g in globs:
        for p in unit.glob(g):
            if not p.is_file() or "out-java" in p.parts or p.name.startswith("."):
                continue
            rp = str(p.resolve())
            if rp in seen:
                continue
            seen.add(rp)
            files.append(p)
    return files


def classify_unit(uid: str, unit: Path) -> tuple[str, dict]:
    hj = unit / "harness.json"
    harness = json.loads(hj.read_text(encoding="utf-8")) if hj.is_file() else {}
    examples = example_files(unit, harness) if hj.is_file() else []
    n_ex = len(examples)
    parsers = parser_files(unit)
    ptext = ""
    psz = 0
    if parsers:
        psz = max(p.stat().st_size for p in parsers)
        ptext = parsers[0].read_text(encoding="utf-8", errors="replace")

    readme = ""
    rp = unit / "README.md"
    if rp.is_file():
        readme = rp.read_text(encoding="utf-8", errors="replace")

    is_token = bool(TOKEN_STREAM.search(ptext) or TOKEN_STREAM.search(readme))
    is_curated = bool(CURATED.search(ptext) or CURATED.search(readme))
    claims_port = bool(PORTED.search(ptext) or PORTED.search(readme))

    # Structural signals for real ports
    rule_count = len(re.findall(r"^\s*[A-Za-z_][\w$]*\s*::=", ptext, re.M))
    has_lang_nts = bool(
        re.search(
            r"\b(expression|statement|compilationUnit|program|document|json|csvFile|"
            r"rulelist|select_stmt|translationUnit|module)\b",
            ptext,
        )
    )

    quality = "unknown"
    notes: list[str] = []

    if uid in FORCE_PORT and not is_token:
        quality = "language_port"
    elif is_token:
        quality = "token_stream_smoke"
        notes.append("generic_nested_token_stream")
    elif uid in FORCE_SUBSET or is_curated:
        quality = "language_subset"
        notes.append("curated_subset")
    elif claims_port and has_lang_nts and rule_count >= 8 and psz >= 700:
        if n_ex >= 2 and psz >= 900:
            quality = "language_port"
        else:
            quality = "language_subset"
            notes.append("limited_examples_or_rules")
    elif has_lang_nts and rule_count >= 6 and not is_token:
        quality = "language_subset" if n_ex <= 2 or psz < 1500 else "language_port"
    elif psz < 900 and n_ex <= 1:
        quality = "token_stream_smoke"
        notes.append("tiny_parser_single_example")
    else:
        quality = "language_subset"
        notes.append("heuristic_default_subset")

    # toml: has real rules → port if examples ok
    if uid == "toml" and not is_token and rule_count >= 8:
        quality = "language_port" if n_ex >= 1 else "language_subset"

    if uid in REAL_G4_PORT and quality in ("language_port", "language_subset"):
        if "real_g4_port" not in notes:
            notes.append("real_g4_port")

    meta = {
        "quality": quality,
        "parser_bytes": psz,
        "rule_approx": rule_count,
        "harness_example_count": n_ex,
        "quality_notes": notes,
        "is_token_stream": is_token,
    }
    return quality, meta


def relative_source(src: str | None) -> str | None:
    if not src:
        return None
    m = V4_MARKER.search(src)
    if m:
        return "grammars-v4/" + src[m.end() :]
    if src.startswith("/"):
        # keep basename-ish relative hint
        return "grammars-v4/" + Path(src).name
    return src


def main() -> int:
    cat_path = ROOT / "catalog.json"
    cat = json.loads(cat_path.read_text(encoding="utf-8"))
    counts: Counter[str] = Counter()

    for g in cat["grammars"]:
        uid = g["id"]
        unit = ROOT / uid
        if g.get("tier") == "legacy" or not g.get("source_path"):
            g["quality"] = "legacy"
            g["source_path"] = None
            g["source_ref"] = f"legacy:{uid}"
            counts["legacy"] += 1
            continue

        g["source_ref"] = relative_source(g.get("source_path"))
        # Prefer portable ref; drop absolute machine path from published catalog
        g["source_path"] = g["source_ref"]

        if not unit.is_dir() or not (unit / "harness.json").is_file():
            g["quality"] = "unknown"
            counts["unknown"] += 1
            continue

        quality, meta = classify_unit(uid, unit)
        counts[quality] += 1
        g["quality"] = quality
        g["harness_example_count"] = meta["harness_example_count"]
        g["parser_bytes"] = meta["parser_bytes"]

        st_path = unit / "status.json"
        st = {}
        if st_path.is_file():
            st = json.loads(st_path.read_text(encoding="utf-8"))
        # Preserve hand-maintained notes (e.g. ebnf_sugar) across reclassify
        notes = list(meta["quality_notes"])
        for note in st.get("quality_notes") or []:
            if note not in notes and note not in (
                "curated_subset",
                "heuristic_default_subset",
                "limited_examples_or_rules",
                "generic_nested_token_stream",
                "tiny_parser_single_example",
            ):
                notes.append(note)
        meta["quality_notes"] = notes
        g["quality_notes"] = notes
        st.update(
            {
                "id": uid,
                "tier": g.get("tier"),
                "quality": quality,
                "parse_ok": bool(st.get("parse_ok", True)),
                "example_count": meta["harness_example_count"],
                "status": st.get("status") or "ported",
                "quality_notes": notes,
                "parser_bytes": meta["parser_bytes"],
            }
        )
        # Keep blockers empty unless explicitly set; smoke is not "blocked"
        st.setdefault("blockers", [])
        st_path.write_text(json.dumps(st, indent=2) + "\n", encoding="utf-8")

    cat["quality_counts"] = dict(counts)
    cat["quality_schema"] = {
        "language_port": "Language-shaped LPG grammar; intended as a real port",
        "language_subset": "Intentional curated subset — not full language",
        "token_stream_smoke": "Generic nested token-stream; smoke acceptance only",
        "legacy": "Pre-existing LPG grammar (not from grammars-v4 migration)",
        "unknown": "Unclassified",
    }
    # Never publish absolute machine paths as catalog.source
    src = cat.get("source")
    if isinstance(src, str) and (src.startswith("/") or "grammars-v4" in src.replace("\\", "/")):
        cat["source"] = "grammars-v4"
    elif not src:
        cat["source"] = "grammars-v4"
    cat_path.write_text(json.dumps(cat, indent=2) + "\n", encoding="utf-8")
    print("quality_counts:", dict(counts))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
