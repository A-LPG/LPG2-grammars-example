#!/usr/bin/env python3
"""Print migration + quality progress from catalog.json + status.json."""
from __future__ import annotations

import json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CAT = ROOT / "catalog.json"


def main() -> int:
    cat = json.loads(CAT.read_text(encoding="utf-8"))
    by_tier: dict[str, Counter] = {}
    by_quality: Counter = Counter()
    totals = Counter()
    for g in cat["grammars"]:
        uid = g["id"]
        tier = g.get("tier", "?")
        st_path = ROOT / uid / "status.json"
        if st_path.is_file():
            st = json.loads(st_path.read_text(encoding="utf-8"))
            status = "parse_ok" if st.get("parse_ok") else st.get("status", "unknown")
            if st.get("parse_ok"):
                status = "parse_ok"
            quality = st.get("quality") or g.get("quality") or "unknown"
        else:
            status = g.get("status", "pending")
            quality = g.get("quality") or ("legacy" if tier == "legacy" else "unknown")
        by_tier.setdefault(tier, Counter())[status] += 1
        by_quality[quality] += 1
        totals[status] += 1
    print(f"catalog units (v4): {cat.get('unit_count')}")
    print("tier_counts:", cat.get("tier_counts"))
    print("quality_counts:", dict(by_quality))
    if cat.get("quality_schema"):
        print("\nQuality schema:")
        for k, v in cat["quality_schema"].items():
            print(f"  {k}: {v}")
    print("\nBy tier:")
    for tier in sorted(by_tier):
        print(f"  {tier}: {dict(by_tier[tier])}")
    print("\nTotals:", dict(totals))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
