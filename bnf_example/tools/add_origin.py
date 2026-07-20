#!/usr/bin/env python3
"""Add ORIGIN.md for v4-derived units (idempotent)."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CAT = ROOT / "catalog.json"

TEMPLATE = """# Origin

- Upstream: [antlr/grammars-v4](https://github.com/antlr/grammars-v4) `{id}`
- Source ref: `{source_ref}`
- License: see upstream `.g4` / directory headers (often BSD); this LPG port retains attribution.
- Quality: `{quality}` (see `status.json` / `catalog.json` quality schema)

This directory is an LPG2 parse-level adaptation, not a byte-for-byte Antlr grammar.
"""


def main() -> int:
    cat = json.loads(CAT.read_text(encoding="utf-8"))
    n = 0
    for g in cat["grammars"]:
        if g.get("tier") == "legacy" or not g.get("source_ref") and not g.get("source_path"):
            if g.get("tier") == "legacy":
                continue
        if g.get("quality") == "legacy":
            continue
        uid = g["id"]
        unit = ROOT / uid
        if not unit.is_dir():
            continue
        path = unit / "ORIGIN.md"
        if path.is_file():
            continue
        text = TEMPLATE.format(
            id=uid,
            source_ref=g.get("source_ref") or g.get("source_path") or f"grammars-v4/{uid}",
            quality=g.get("quality", "unknown"),
        )
        path.write_text(text, encoding="utf-8")
        n += 1
    print(f"wrote {n} ORIGIN.md files")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
