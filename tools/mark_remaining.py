#!/usr/bin/env python3
"""Scaffold + mark blocked for catalog units that are not yet parse_ok."""
from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CAT = ROOT / "catalog.json"

TIER_BLOCKERS = {
    "A": "awaiting_hand_port_wave_a",
    "B": "awaiting_hand_port_wave_b_kwlexer",
    "C": "awaiting_mainstream_language_port",
    "D": "awaiting_mode_or_huge_grammar_port",
}


def main() -> int:
    only_tier = sys.argv[1] if len(sys.argv) > 1 else None
    cat = json.loads(CAT.read_text(encoding="utf-8"))
    n = 0
    for g in cat["grammars"]:
        if not g.get("source_path"):
            continue
        tier = g["tier"]
        if only_tier and tier != only_tier:
            continue
        uid = g["id"]
        st = ROOT / uid / "status.json"
        if st.is_file():
            data = json.loads(st.read_text(encoding="utf-8"))
            if data.get("parse_ok"):
                continue
        reason = TIER_BLOCKERS.get(tier, "awaiting_port")
        if g.get("has_mode"):
            reason = "antlr_lexer_modes_unsupported"
        elif g.get("g4_bytes", 0) >= 80_000:
            reason = "grammar_too_large_for_mechanical_port"
        subprocess.check_call(
            [
                sys.executable,
                str(ROOT / "tools" / "scaffold.py"),
                uid,
                "--tier",
                tier,
                "--blocked-reason",
                reason,
            ]
        )
        n += 1
    print(f"scaffolded/marked {n} units")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
