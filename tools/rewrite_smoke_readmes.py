#!/usr/bin/env python3
"""Rewrite scaffold stub READMEs for token_stream_smoke units.

Only replaces short / ice-break / "Parse-level port" stubs that do not already
state token_stream_smoke honestly.
"""
from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CAT = ROOT / "catalog.json"

STUB_HINTS = re.compile(
    r"Wave [ABCD].*ice-break|Parse-level (LPG )?port|generic token-stream",
    re.I,
)
ALREADY = re.compile(r"token_stream_smoke\s*[—\-–]", re.I)


def is_stub(text: str) -> bool:
    if ALREADY.search(text) or "not a language grammar" in text:
        return False
    # Overstates as a port while quality is smoke
    if re.search(r"Parse-level port", text, re.I) and "token_stream_smoke" not in text:
        return True
    # Short scaffold-style notes
    if len(text.strip()) <= 400 and STUB_HINTS.search(text):
        return True
    if len(text.strip()) <= 200:
        return True
    return False


def rewrite(uid: str) -> str:
    return (
        f"# {uid}\n\n"
        f"**Quality: `token_stream_smoke` — not a language grammar.**\n\n"
        f"Scaffold / nested token-stream smoke for antlr/grammars-v4 `{uid}`. "
        f"Harness may report `parse_ok`; that does **not** mean a real LPG language port.\n\n"
        f"See `status.json` and `catalog.json` → `quality_schema`.\n\n"
        f"```bash\n"
        f"bash harness/run-one.sh {uid}\n"
        f"```\n"
    )


def main() -> int:
    cat = json.loads(CAT.read_text(encoding="utf-8"))
    updated = 0
    skipped = 0
    for g in cat["grammars"]:
        if g.get("quality") != "token_stream_smoke":
            continue
        uid = g["id"]
        rp = ROOT / uid / "README.md"
        if not rp.is_file():
            rp.parent.mkdir(parents=True, exist_ok=True)
            rp.write_text(rewrite(uid), encoding="utf-8")
            updated += 1
            continue
        text = rp.read_text(encoding="utf-8", errors="replace")
        if not is_stub(text):
            skipped += 1
            continue
        rp.write_text(rewrite(uid), encoding="utf-8")
        updated += 1
    print(f"rewrote={updated} skipped_non_stub={skipped}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
