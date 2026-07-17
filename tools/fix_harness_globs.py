#!/usr/bin/env python3
"""Deduplicate overlapping example_globs and prefer curated-only when present."""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def main() -> int:
    n = 0
    for hj in ROOT.rglob("harness.json"):
        if "out-java" in hj.parts:
            continue
        unit = hj.parent
        h = json.loads(hj.read_text(encoding="utf-8"))
        globs = h.get("example_globs") or ["examples/**/*"]
        curated = unit / "examples-curated"
        has_curated = curated.is_dir() and any(curated.rglob("*"))
        # If curated exists and harness already mentions it, drop broad examples/**
        new_globs = []
        seen = set()
        for g in globs:
            if has_curated and g.startswith("examples/") and not g.startswith("examples-curated"):
                # keep only if no curated glob present
                continue
            if g in seen:
                continue
            seen.add(g)
            new_globs.append(g)
        if has_curated and not any(g.startswith("examples-curated") for g in new_globs):
            new_globs = ["examples-curated/**/*"]
        if not new_globs:
            new_globs = ["examples-curated/**/*"] if has_curated else ["examples/**/*"]
        # Drop redundant **/* when a more specific glob exists under same root
        if len(new_globs) > 1 and any(g.endswith("/**/*") for g in new_globs):
            specifics = [g for g in new_globs if not g.endswith("/**/*")]
            broads = [g for g in new_globs if g.endswith("/**/*")]
            # keep broads only if no specifics
            new_globs = specifics if specifics else broads
        if new_globs != globs:
            h["example_globs"] = new_globs
            hj.write_text(json.dumps(h, indent=2) + "\n", encoding="utf-8")
            n += 1
    print(f"updated {n} harness.json files")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
