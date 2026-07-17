#!/usr/bin/env python3
"""Scaffold a grammars-example unit from grammars-v4 (examples + stubs + status)."""
from __future__ import annotations

import argparse
import json
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def java_name(uid: str) -> str:
    base = uid.split("/")[-1]
    parts = re.split(r"[^A-Za-z0-9]+", base)
    return "".join(p[:1].upper() + p[1:] for p in parts if p) or "Grammar"


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("id")
    ap.add_argument("--v4-root", type=Path, default=Path("/Users/kuafu/Downloads/grammars-v4-master"))
    ap.add_argument("--tier", default="A")
    ap.add_argument("--blocked-reason", default="")
    args = ap.parse_args()
    src = args.v4_root / args.id
    if not src.is_dir():
        raise SystemExit(f"missing source {src}")
    dest = ROOT / args.id
    dest.mkdir(parents=True, exist_ok=True)
    ex_src = src / "examples"
    ex_dest = dest / "examples"
    if ex_src.is_dir():
        if ex_dest.exists():
            shutil.rmtree(ex_dest)
        shutil.copytree(ex_src, ex_dest, ignore=shutil.ignore_patterns("*.tree", "target", ".git"))
    else:
        ex_dest.mkdir(exist_ok=True)
    name = java_name(args.id)
    pkg = "lpg.grammars." + args.id.replace("/", ".").replace("-", "_")
    harness = {
        "package": pkg,
        "lexer": f"{name}Lexer",
        "parser": f"{name}Parser",
        "example_globs": ["examples/**/*"],
    }
    (dest / "harness.json").write_text(json.dumps(harness, indent=2) + "\n", encoding="utf-8")
    status = {
        "id": args.id,
        "tier": args.tier,
        "parse_ok": False,
        "status": "blocked" if args.blocked_reason else "pending",
        "example_count": sum(1 for p in ex_dest.rglob("*") if p.is_file()),
        "blockers": [args.blocked_reason] if args.blocked_reason else [],
    }
    (dest / "status.json").write_text(json.dumps(status, indent=2) + "\n", encoding="utf-8")
    readme = dest / "README.md"
    if not readme.is_file():
        readme.write_text(
            f"# {args.id}\n\nScaffold from antlr/grammars-v4 `{args.id}`.\n\n"
            f"Status: see `status.json`.\n",
            encoding="utf-8",
        )
    print(f"scaffolded {dest}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
