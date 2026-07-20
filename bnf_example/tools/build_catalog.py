#!/usr/bin/env python3
"""Scan antlr/grammars-v4 and emit grammars-example/catalog.json with A/B/C/D tiers."""
from __future__ import annotations

import argparse
import json
import os
import re
import xml.etree.ElementTree as ET
from pathlib import Path

SKIP_DIRS = {
    "_scripts",
    ".github",
    ".git",
    "target",
    "node_modules",
}

MODE_RE = re.compile(r"\b(mode\s+\w+|pushMode\s*\(|popMode\b)", re.I)
CHANNEL_RE = re.compile(r"->\s*channel\s*\(", re.I)
PRED_RE = re.compile(r"\}\s*\?")
LEXER_GRAMMAR_RE = re.compile(r"^\s*lexer\s+grammar\b", re.M)
PARSER_GRAMMAR_RE = re.compile(r"^\s*parser\s+grammar\b", re.M)
COMBINED_GRAMMAR_RE = re.compile(r"^\s*grammar\b", re.M)

# Known large / dialect families forced to C or D
FORCE_D_PREFIXES = (
    "sql/",
    "verilog/",
    "cobol85",
    "haskell",
    "asm/",
    "unicode/",
)
FORCE_C_IDS = {
    "c",
    "cpp",
    "csharp",
    "java",
    "javascript",
    "typescript",
    "python",
    "go",
    "rust",
    "kotlin",
    "scala",
    "swift",
    "php",
    "ruby",
    "lua",
    "dart2",
    "fortran77",
    "objc",
}


def find_desc_units(root: Path) -> list[Path]:
    units = []
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames if d not in SKIP_DIRS and not d.startswith(".")]
        if "desc.xml" in filenames:
            units.append(Path(dirpath))
    return sorted(units)


def rel_id(root: Path, unit: Path) -> str:
    return unit.relative_to(root).as_posix()


def gather_g4(unit: Path) -> list[Path]:
    # Prefer top-level .g4; skip examples/ and target/
    g4s = []
    for p in unit.rglob("*.g4"):
        parts = set(p.relative_to(unit).parts)
        if parts & {"examples", "target", "generated", "original"}:
            continue
        if "examples" in p.parts:
            continue
        g4s.append(p)
    # Prefer files directly under unit
    top = [p for p in g4s if p.parent == unit]
    return sorted(top or g4s)


def count_examples(unit: Path) -> int:
    ex = unit / "examples"
    if not ex.is_dir():
        return 0
    n = 0
    for p in ex.rglob("*"):
        if p.is_file() and not p.name.startswith("."):
            n += 1
    return n


def parse_pom_meta(unit: Path) -> dict:
    pom = unit / "pom.xml"
    meta = {"entry_point": None, "grammar_name": None, "example_files": None}
    if not pom.is_file():
        return meta
    text = pom.read_text(encoding="utf-8", errors="replace")
    m = re.search(r"<entryPoint>\s*([^<]+)\s*</entryPoint>", text)
    if m:
        meta["entry_point"] = m.group(1).strip()
    m = re.search(r"<grammarName>\s*([^<]+)\s*</grammarName>", text)
    if m:
        meta["grammar_name"] = m.group(1).strip()
    m = re.search(r"<exampleFiles>\s*([^<]+)\s*</exampleFiles>", text)
    if m:
        meta["example_files"] = m.group(1).strip()
    return meta


def analyze_g4(g4s: list[Path]) -> dict:
    total_lines = 0
    total_bytes = 0
    has_mode = False
    has_channel = False
    has_pred = False
    has_lexer_grammar = False
    has_parser_grammar = False
    has_combined = False
    names = []
    for g4 in g4s:
        try:
            text = g4.read_text(encoding="utf-8", errors="replace")
        except OSError:
            continue
        total_bytes += len(text.encode("utf-8", errors="replace"))
        total_lines += text.count("\n") + (1 if text and not text.endswith("\n") else 0)
        names.append(g4.name)
        if MODE_RE.search(text):
            has_mode = True
        if CHANNEL_RE.search(text):
            has_channel = True
        if PRED_RE.search(text):
            has_pred = True
        if LEXER_GRAMMAR_RE.search(text):
            has_lexer_grammar = True
        if PARSER_GRAMMAR_RE.search(text):
            has_parser_grammar = True
        if COMBINED_GRAMMAR_RE.search(text) and not LEXER_GRAMMAR_RE.search(text) and not PARSER_GRAMMAR_RE.search(text):
            has_combined = True
        elif COMBINED_GRAMMAR_RE.search(text) and not has_lexer_grammar and not has_parser_grammar:
            has_combined = True
    split = has_lexer_grammar and has_parser_grammar
    if not split and not has_combined and g4s:
        # Heuristic: *Lexer.g4 + *Parser.g4
        lower = [n.lower() for n in names]
        if any("lexer" in n for n in lower) and any("parser" in n for n in lower):
            split = True
        else:
            has_combined = True
    return {
        "g4_files": names,
        "g4_count": len(g4s),
        "g4_lines": total_lines,
        "g4_bytes": total_bytes,
        "has_mode": has_mode,
        "has_channel": has_channel,
        "has_predicate": has_pred,
        "split_lexer_parser": split,
        "combined": (not split) and has_combined,
    }


def classify(uid: str, info: dict, example_count: int) -> str:
    top = uid.split("/", 1)[0]
    if any(uid == p.rstrip("/") or uid.startswith(p) for p in FORCE_D_PREFIXES):
        return "D"
    if info["has_mode"] or info["g4_bytes"] >= 80_000:
        return "D"
    if top in FORCE_C_IDS or uid.startswith(tuple(x + "/" for x in FORCE_C_IDS)):
        return "C"
    if info["g4_lines"] >= 2500 or info["g4_bytes"] >= 40_000:
        return "C"
    if info["split_lexer_parser"] or info["g4_lines"] >= 400:
        return "B"
    if info["has_channel"] or info["has_predicate"]:
        return "B"
    # Small combined, no mode
    if info["g4_lines"] <= 350 and example_count <= 50:
        return "A"
    if info["g4_lines"] <= 800:
        return "B"
    return "C"


def load_existing_status(out_root: Path, uid: str) -> dict | None:
    status_path = out_root / uid / "status.json"
    if status_path.is_file():
        try:
            return json.loads(status_path.read_text(encoding="utf-8"))
        except json.JSONDecodeError:
            return None
    return None


def load_prev_catalog(path: Path) -> dict[str, dict]:
    if not path.is_file():
        return {}
    try:
        cat = json.loads(path.read_text(encoding="utf-8"))
    except json.JSONDecodeError:
        return {}
    out: dict[str, dict] = {}
    for g in cat.get("grammars") or []:
        uid = g.get("id")
        if uid:
            out[uid] = g
    return out


def relative_source_ref(uid: str) -> str:
    """Portable grammars-v4 reference — never an absolute machine path."""
    return f"grammars-v4/{uid}"


QUALITY_KEYS = (
    "quality",
    "harness_example_count",
    "parser_bytes",
    "quality_notes",
    "source_ref",
)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument(
        "--v4-root",
        type=Path,
        default=Path(os.environ.get("GRAMMARS_V4_ROOT", "")),
        help="Path to antlr/grammars-v4 checkout (or set GRAMMARS_V4_ROOT)",
    )
    ap.add_argument(
        "--out",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "catalog.json",
    )
    ap.add_argument(
        "--grammars-root",
        type=Path,
        default=Path(__file__).resolve().parents[1],
    )
    ap.add_argument(
        "--classify",
        action=argparse.BooleanOptionalAction,
        default=True,
        help="Run classify_quality.py after rebuild (default: true)",
    )
    args = ap.parse_args()
    root_arg = args.v4_root
    # Path("") resolves to ".", which must not silently rebuild an empty catalog.
    if root_arg is None or str(root_arg).strip() in ("", ".", "./"):
        raise SystemExit(
            "grammars-v4 root not found. Pass --v4-root or set GRAMMARS_V4_ROOT "
            "(do not rely on a machine-local default path)."
        )
    root: Path = root_arg.expanduser().resolve()
    if not root.is_dir():
        raise SystemExit(
            f"grammars-v4 root not found: {root}. Pass --v4-root or set GRAMMARS_V4_ROOT."
        )
    # Require at least one desc.xml so we never wipe catalog against a wrong tree.
    if not find_desc_units(root):
        raise SystemExit(
            f"No desc.xml units under {root}; refusing to overwrite catalog.json."
        )

    prev_by_id = load_prev_catalog(args.out)
    units = find_desc_units(root)
    grammars = []
    tier_counts = {"A": 0, "B": 0, "C": 0, "D": 0, "legacy": 0}

    for unit in units:
        uid = rel_id(root, unit)
        g4s = gather_g4(unit)
        info = analyze_g4(g4s)
        examples = count_examples(unit)
        pom = parse_pom_meta(unit)
        tier = classify(uid, info, examples)
        existing = load_existing_status(args.grammars_root, uid)
        prev = prev_by_id.get(uid) or {}
        parse_ok = bool(existing.get("parse_ok")) if existing else bool(prev.get("parse_ok"))
        blockers = (
            existing.get("blockers", [])
            if existing
            else prev.get("blockers", [])
        )
        status = (
            existing.get("status")
            if existing and existing.get("status")
            else prev.get("status") or ("ported" if parse_ok else "pending")
        )
        source_ref = relative_source_ref(uid)
        entry = {
            "id": uid,
            # Portable relative ref only (never absolute /Users/... paths)
            "source_path": source_ref,
            "source_ref": source_ref,
            "tier": tier,
            "status": status,
            "parse_ok": parse_ok,
            "example_count": examples,
            "entry_point": pom["entry_point"],
            "grammar_name": pom["grammar_name"],
            "blockers": blockers,
            **info,
        }
        # Preserve quality fields if present (classify may overwrite next)
        for key in QUALITY_KEYS:
            if key in ("source_ref",):
                continue
            src = existing if existing and key in existing else prev
            if src and key in src and src[key] is not None:
                entry[key] = src[key]
        grammars.append(entry)
        tier_counts[tier] = tier_counts.get(tier, 0) + 1

    # Legacy local grammars not from v4
    for legacy in ("java", "lpg", "leg", "JikesPG", "jdt.core"):
        p = args.grammars_root / legacy
        if p.is_dir():
            prev = prev_by_id.get(legacy) or {}
            existing = load_existing_status(args.grammars_root, legacy)
            grammars.append(
                {
                    "id": legacy,
                    "source_path": None,
                    "source_ref": f"legacy:{legacy}",
                    "tier": "legacy",
                    "status": "legacy",
                    "parse_ok": False,
                    "example_count": 0,
                    "entry_point": None,
                    "grammar_name": None,
                    "blockers": [],
                    "g4_files": [],
                    "g4_count": 0,
                    "g4_lines": 0,
                    "g4_bytes": 0,
                    "has_mode": False,
                    "has_channel": False,
                    "has_predicate": False,
                    "split_lexer_parser": False,
                    "combined": False,
                    "quality": (existing or prev).get("quality") or "legacy",
                    "note": "Pre-existing LPG grammar; not from grammars-v4",
                }
            )
            tier_counts["legacy"] += 1

    catalog = {
        "version": 1,
        # Logical source label — not a machine absolute path
        "source": "grammars-v4",
        "unit_count": len(units),
        "tier_counts": tier_counts,
        "grammars": grammars,
    }
    # Keep prior quality_schema / quality_counts until classify refreshes them
    if args.out.is_file():
        try:
            old = json.loads(args.out.read_text(encoding="utf-8"))
            for k in ("quality_schema", "quality_counts"):
                if k in old and k not in catalog:
                    catalog[k] = old[k]
        except json.JSONDecodeError:
            pass

    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(json.dumps(catalog, indent=2) + "\n", encoding="utf-8")
    print(f"Wrote {args.out} ({len(units)} v4 units)")
    print("Tier counts:", json.dumps(tier_counts))

    if args.classify:
        import subprocess
        import sys

        classify_script = Path(__file__).resolve().parent / "classify_quality.py"
        print(f"Running {classify_script.name} …")
        rc = subprocess.call([sys.executable, str(classify_script)])
        if rc != 0:
            return rc
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
