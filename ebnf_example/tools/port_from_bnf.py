#!/usr/bin/env python3
"""Scaffold / refresh ebnf_example units from bnf_example twins.

Copies lexer/examples/harness, stamps %Options ebnf on *Parser.g,
updates ORIGIN/README markers, merges catalog.json + status.json notes.

Does NOT rewrite list/optional shapes (do that by hand or a separate pass).

Usage:
  python3 tools/port_from_bnf.py lambda rpn esolang/wheel
  python3 tools/port_from_bnf.py --refresh-catalog
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path

EBNF_ROOT = Path(__file__).resolve().parents[1]
BNF_ROOT = EBNF_ROOT.parent / "bnf_example"
CATALOG = EBNF_ROOT / "catalog.json"

EXCLUDE_DIR_NAMES = {"out-java", "out-java-test", "out-java-tmp", "out-java-bt", "out-java2", "__pycache__"}


def copy_unit(uid: str, force: bool = False) -> Path:
    src = BNF_ROOT / uid
    dst = EBNF_ROOT / uid
    if not src.is_dir():
        raise SystemExit(f"missing bnf twin: {src}")
    if dst.exists() and not force:
        print(f"keep existing {uid} (use --force to overwrite)")
        return dst
    if dst.exists():
        shutil.rmtree(dst)
    dst.parent.mkdir(parents=True, exist_ok=True)

    def ignore(dirpath: str, names: list[str]) -> set[str]:
        ignored = set()
        for n in names:
            if n in EXCLUDE_DIR_NAMES or n.endswith(".class"):
                ignored.add(n)
            if n.endswith(".l"):
                ignored.add(n)
        return ignored

    shutil.copytree(src, dst, ignore=ignore)
    print(f"copied {uid}")
    return dst


def stamp_ebnf_on_parsers(unit: Path) -> None:
    for parser in unit.glob("*Parser.g"):
        text = parser.read_text(encoding="utf-8")
        if re.search(r"(?i)%options[^\n]*\bebnf\b", text):
            continue
        # Prefer attaching to first %Options / %options line that looks like flags
        m = re.search(r"(?im)^(%options\s+)([^\n]+)$", text)
        if m:
            flags = m.group(2).strip()
            if re.search(r"(?i)\bebnf\b", flags):
                continue
            new_flags = flags + (",ebnf" if flags else "ebnf")
            text = text[: m.start()] + m.group(1) + new_flags + text[m.end() :]
        else:
            # Insert after initial comment block
            text = "%Options ebnf\n" + text
        # Header note
        if "EBNF" not in text.split("%Rules", 1)[0]:
            text = re.sub(
                r"(--[^\n]*\n)",
                r"\1-- EBNF port: %Options ebnf (twin: bnf_example).\n",
                text,
                count=1,
            )
        parser.write_text(text, encoding="utf-8")
        print(f"  stamped ebnf: {parser.relative_to(EBNF_ROOT)}")


def stamp_docs(unit: Path, uid: str) -> None:
    origin = unit / "ORIGIN.md"
    if origin.is_file():
        t = origin.read_text(encoding="utf-8")
        if "ebnf" not in t.lower() or "Classic-BNF twin" not in t:
            if not t.endswith("\n"):
                t += "\n"
            t += (
                f"\nThis directory is an LPG2 parse-level adaptation (`%Options ebnf`).\n"
                f"Classic-BNF twin: `grammars-example/bnf_example/{uid}/`.\n"
            )
            origin.write_text(t, encoding="utf-8")
    readme = unit / "README.md"
    if readme.is_file():
        t = readme.read_text(encoding="utf-8")
        if "EBNF" not in t and "ebnf" not in t:
            t = re.sub(
                r"(^#\s+[^\n]+)",
                rf"\1 (EBNF)",
                t,
                count=1,
                flags=re.M,
            )
            if "Classic-BNF twin" not in t:
                t += f"\n\nClassic-BNF twin: [`../../bnf_example/{uid}/`](../../bnf_example/{uid}/).\n"
            readme.write_text(t, encoding="utf-8")


def ensure_status_ebnf_sugar(unit: Path) -> dict:
    path = unit / "status.json"
    data: dict = {}
    if path.is_file():
        data = json.loads(path.read_text(encoding="utf-8"))
    notes = list(data.get("quality_notes") or [])
    if "ebnf_sugar" not in notes:
        notes.append("ebnf_sugar")
    data["quality_notes"] = notes
    if "quality" not in data:
        data["quality"] = "language_port"
    if "tier" not in data:
        data["tier"] = "A"
    path.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")
    return data


def catalog_entry_for(uid: str, status: dict) -> dict:
    twin_st = BNF_ROOT / uid / "status.json"
    twin = json.loads(twin_st.read_text(encoding="utf-8")) if twin_st.is_file() else {}
    notes = list(status.get("quality_notes") or twin.get("quality_notes") or [])
    if "ebnf_sugar" not in notes:
        notes.append("ebnf_sugar")
    return {
        "id": uid,
        "source_path": f"grammars-v4/{uid}",
        "source_ref": f"grammars-v4/{uid}",
        "tier": status.get("tier") or twin.get("tier") or "A",
        "status": status.get("status") or twin.get("status") or "ported",
        "parse_ok": bool(status.get("parse_ok", twin.get("parse_ok", True))),
        "example_count": status.get("example_count") or twin.get("example_count") or 0,
        "entry_point": status.get("start") or twin.get("start") or twin.get("entry_point"),
        "quality": status.get("quality") or twin.get("quality") or "language_port",
        "quality_notes": notes,
    }


def refresh_catalog(extra_ids: list[str] | None = None) -> None:
    cat = json.loads(CATALOG.read_text(encoding="utf-8"))
    by_id = {g["id"]: g for g in cat.get("grammars") or []}

    # Discover units with status.json under ebnf_example (skip tools/harness)
    found: list[str] = []
    for st in sorted(EBNF_ROOT.glob("**/status.json")):
        rel = st.parent.relative_to(EBNF_ROOT)
        if rel.parts[0] in {"tools", "harness"}:
            continue
        found.append(str(rel))

    if extra_ids:
        for uid in extra_ids:
            if uid not in found and (EBNF_ROOT / uid / "status.json").is_file():
                found.append(uid)

    for uid in found:
        status = ensure_status_ebnf_sugar(EBNF_ROOT / uid)
        by_id[uid] = catalog_entry_for(uid, status)

    grammars = sorted(by_id.values(), key=lambda g: g["id"])
    qc: dict[str, int] = {}
    tc: dict[str, int] = {}
    for g in grammars:
        q = g.get("quality") or "unknown"
        qc[q] = qc.get(q, 0) + 1
        t = g.get("tier") or "?"
        tc[t] = tc.get(t, 0) + 1

    cat["grammars"] = grammars
    cat["unit_count"] = len(grammars)
    cat["quality_counts"] = qc
    cat["tier_counts"] = tc
    cat["style"] = "ebnf"
    CATALOG.write_text(json.dumps(cat, indent=2) + "\n", encoding="utf-8")
    print(f"catalog: {len(grammars)} units → {CATALOG}")


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("ids", nargs="*", help="unit ids relative to corpus root")
    ap.add_argument("--force", action="store_true", help="overwrite existing ebnf unit dirs")
    ap.add_argument(
        "--refresh-catalog",
        action="store_true",
        help="only rebuild catalog.json from on-disk status.json files",
    )
    ap.add_argument(
        "--stamp-only",
        action="store_true",
        help="do not copy; only stamp ebnf + docs + status on existing units",
    )
    args = ap.parse_args()

    if args.refresh_catalog and not args.ids:
        refresh_catalog()
        return

    if not args.ids:
        ap.error("provide unit ids, or --refresh-catalog")

    for uid in args.ids:
        uid = uid.strip().strip("/")
        if args.stamp_only:
            unit = EBNF_ROOT / uid
            if not unit.is_dir():
                raise SystemExit(f"missing ebnf unit: {unit}")
        else:
            unit = copy_unit(uid, force=args.force)
        stamp_ebnf_on_parsers(unit)
        stamp_docs(unit, uid)
        ensure_status_ebnf_sugar(unit)

    refresh_catalog(args.ids)


if __name__ == "__main__":
    main()
