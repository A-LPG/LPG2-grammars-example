#!/usr/bin/env python3
"""Full-corpus scan: classic token soup + thin/fake ports → PORT_PLAN.

Writes:
  tools/_port_plan.json
  tools/PORT_PLAN.md
  tools/_soup_ids.txt
  tools/_thin_ids.txt
"""
from __future__ import annotations

import hashlib
import json
import re
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
V4 = Path("/Users/kuafu/Downloads/grammars-v4-master")

SOUP_RE = [
    (re.compile(r"nested token stream", re.I), "nested_token_stream_comment"),
    (re.compile(r"item\s*::=\s*atom\b"), "item_atom_rule"),
    (re.compile(r"item\s*::=\s*atom\s*\|\s*paren"), "item_atom_paren"),
]

GENERIC_NTS = {"item", "atom", "paren", "brace", "bracket", "element", "stuff"}


def parser_files(uid: str) -> list[Path]:
    d = ROOT / uid
    if not d.is_dir():
        return []
    return sorted(d.glob("*Parser.g")) + sorted(d.glob("*parser.g"))


def parse_nts(text: str) -> set[str]:
    return set(re.findall(r"(?m)^([A-Za-z_][\w]*)\s*::=", text))


def g4_parser_rules(uid: str) -> tuple[set[str], int]:
    d = V4 / uid
    rules: set[str] = set()
    lines = 0
    if not d.is_dir():
        return rules, lines
    for g4 in sorted(d.rglob("*.g4")):
        t = g4.read_text(encoding="utf-8", errors="replace")
        lines += t.count("\n") + 1
        name = g4.name.lower()
        if "lexer" in name and "parser" not in name:
            continue
        for m in re.finditer(r"(?m)^([A-Za-z_][\w]*)\s*:", t):
            rules.add(m.group(1))
    return rules, lines


def norm_hash(text: str) -> str:
    n = re.sub(r"(?m)^--.*$", "", text)
    n = re.sub(r"%[Oo]ptions[^\n]*", "", n)
    n = re.sub(r"\b\w+(Parser|Lexer|KWLexer)\b", "X", n)
    n = re.sub(r"lpg\.grammars\.\S+", "PKG", n)
    n = re.sub(r"\s+", " ", n).strip()
    return hashlib.md5(n.encode()).hexdigest()[:12]


def main() -> int:
    catalog = json.loads((ROOT / "catalog.json").read_text(encoding="utf-8"))
    rows: list[dict] = []
    by_hash: dict[str, list[str]] = defaultdict(list)
    soup_ids: list[str] = []
    thin_rows: list[tuple[int, int, str]] = []

    for g in catalog["grammars"]:
        if g.get("quality") == "legacy":
            continue
        uid = g["id"]
        ps = parser_files(uid)
        g4_rules, g4_lines = g4_parser_rules(uid)
        if not g4_lines:
            g4_lines = int(g.get("g4_lines") or 0)
        entry: dict = {
            "id": uid,
            "tier": g.get("tier"),
            "quality": g.get("quality"),
            "g4_lines": g4_lines,
            "g4_rules": len(g4_rules),
            "lpg_lines": 0,
            "lpg_nts": 0,
            "nt_overlap": 0,
            "flags": [],
            "priority": 0,
            "wave": None,
        }
        if not ps:
            entry["flags"].append("missing_parser")
            entry["priority"] = 100
            entry["needs_port"] = True
            rows.append(entry)
            soup_ids.append(uid)
            continue

        text = ps[0].read_text(encoding="utf-8", errors="replace")
        lines = text.count("\n") + 1
        nts = parse_nts(text)
        entry["lpg_lines"] = lines
        entry["lpg_nts"] = len(nts)
        entry["parser_file"] = str(ps[0].relative_to(ROOT))
        h = norm_hash(text)
        entry["norm_hash"] = h
        by_hash[h].append(uid)

        for rx, name in SOUP_RE:
            if rx.search(text):
                entry["flags"].append(name)

        lpgl = {x.lower() for x in nts}
        g4l = {x.lower() for x in g4_rules}
        g4c = {re.sub(r"_", "", x) for x in g4l}
        lpgc = {re.sub(r"_", "", x) for x in lpgl}
        entry["nt_overlap"] = max(len(g4l & lpgl), len(g4c & lpgc))

        soupish = nts & GENERIC_NTS
        if lines < 100 and len(soupish) >= 3 and entry["nt_overlap"] <= 2:
            entry["flags"].append("generic_soup_shape")

        classic_soup = any(
            f in entry["flags"]
            for f in ("nested_token_stream_comment", "item_atom_rule", "item_atom_paren", "generic_soup_shape")
        )
        if classic_soup:
            entry["flags"].append("token_soup")
            soup_ids.append(uid)

        gl = entry["g4_lines"]
        if gl >= 800 and lines < 200:
            entry["flags"].append("tiny_vs_large_g4")
        elif gl >= 400 and lines < 120:
            entry["flags"].append("tiny_vs_medium_g4")
        if gl >= 500 and entry["nt_overlap"] <= 3 and lines < 500:
            entry["flags"].append("low_nt_overlap")
        if gl >= 300 and lines < 50:
            entry["flags"].append("micro_parser")
        if uid.startswith("sql/") and lines < 200:
            entry["flags"].append("sql_shared_stub_suspect")

        opt_list = sum(1 for n in nts if n.startswith("opt_") or n.startswith("list_"))
        if lines >= 400 and opt_list >= 20 and not classic_soup:
            entry["flags"].append("antlr2lpg_structural")

        pri = 0
        if "token_soup" in entry["flags"] or "missing_parser" in entry["flags"]:
            pri += 100
        if "tiny_vs_large_g4" in entry["flags"]:
            pri += 70
        if "low_nt_overlap" in entry["flags"]:
            pri += 50
        if "sql_shared_stub_suspect" in entry["flags"]:
            pri += 40
        if "tiny_vs_medium_g4" in entry["flags"]:
            pri += 30
        boost = (
            "java/",
            "python/",
            "javascript/",
            "csharp/",
            "kotlin/",
            "swift/",
            "golang",
            "rust",
            "cpp",
            "c",
            "sql/",
        )
        if any(uid == p or uid.startswith(p) for p in boost):
            pri += 15
        entry["priority"] = pri

        bad = [f for f in entry["flags"] if f != "antlr2lpg_structural"]
        if "antlr2lpg_structural" in entry["flags"] and lines >= 400 and "token_soup" not in entry["flags"]:
            bad = [f for f in bad if f != "low_nt_overlap"]
        if bad:
            entry["needs_port"] = True
            entry["flags"] = bad
            rows.append(entry)
            if not classic_soup and ("tiny_vs_large_g4" in bad or "tiny_vs_medium_g4" in bad or "low_nt_overlap" in bad):
                thin_rows.append((lines, gl, uid))
        else:
            entry["needs_port"] = False

    for h, ids in by_hash.items():
        if len(ids) < 3:
            continue
        for r in rows:
            if r["id"] in ids and not any(x.startswith("clone_cluster") for x in r["flags"]):
                r["flags"].append(f"clone_cluster_n{len(ids)}")
                r["priority"] += 10

    rows.sort(key=lambda r: (-r["priority"], -(r.get("g4_lines") or 0), r["id"]))

    waves = {
        "W1_soup_clear": [],
        "W2_mainstream": [],
        "W3_heavy_dialects": [],
        "W4_medium": [],
        "W5_long_tail": [],
    }
    mainstream_pfx = (
        "java/",
        "python/",
        "javascript/",
        "csharp/",
        "kotlin/",
        "swift/",
        "scala/",
        "golang",
        "rust",
        "cpp",
        "c",
        "typescript",
    )
    for r in rows:
        uid = r["id"]
        flags = r["flags"]
        if any(
            f in flags
            for f in ("token_soup", "item_atom_rule", "generic_soup_shape", "missing_parser", "nested_token_stream_comment")
        ):
            r["wave"] = "W1_soup_clear"
        elif any(uid == p or uid.startswith(p) for p in mainstream_pfx):
            r["wave"] = "W2_mainstream"
        elif uid.startswith("sql/") or uid.startswith("asm/") or "verilog" in uid or uid in (
            "cobol85",
            "haskell",
            "edif300",
        ):
            r["wave"] = "W3_heavy_dialects"
        elif r.get("tier") in ("A", "B") or (r.get("g4_lines") or 0) < 1500:
            r["wave"] = "W4_medium"
        else:
            r["wave"] = "W5_long_tail"
        waves[r["wave"]].append(r)

    all_non_legacy = [g for g in catalog["grammars"] if g.get("quality") != "legacy"]
    needs = {r["id"] for r in rows}
    report = {
        "generated": "tools/scan_port_plan.py",
        "v4_root": str(V4),
        "totals": {
            "catalog_non_legacy": len(all_non_legacy),
            "needs_port": len(rows),
            "looks_ok_or_structural": len(all_non_legacy) - len(needs),
            "token_soup_like": len(soup_ids),
            "tiny_or_low_overlap": sum(
                1
                for r in rows
                if any(x.startswith("tiny") or x in ("low_nt_overlap", "micro_parser") for x in r["flags"])
            ),
            "sql_stub_suspect": sum(1 for r in rows if "sql_shared_stub_suspect" in r["flags"]),
        },
        "waves": {k: [r["id"] for r in v] for k, v in waves.items()},
        "wave_counts": {k: len(v) for k, v in waves.items()},
        "units": rows,
        "clone_clusters": [
            {"hash": h, "count": len(ids), "ids": ids}
            for h, ids in sorted(by_hash.items(), key=lambda kv: -len(kv[1]))
            if len(ids) >= 3
        ],
    }

    tools = ROOT / "tools"
    (tools / "_port_plan.json").write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    (tools / "_soup_ids.txt").write_text("\n".join(sorted(set(soup_ids))) + "\n", encoding="utf-8")
    thin_rows.sort(key=lambda x: -x[1])
    (tools / "_thin_ids.txt").write_text(
        "\n".join(f"{a}\t{b}\t{c}" for a, b, c in thin_rows) + "\n", encoding="utf-8"
    )

    md: list[str] = []
    md.append("# Grammars-example real-port plan (full corpus scan)")
    md.append("")
    md.append("Regenerate: `python3 tools/scan_port_plan.py`")
    md.append("")
    md.append("## Acceptance bar")
    md.append("")
    md.append("- Forbidden: nested token-stream soup (`item ::= atom | paren | ...`).")
    md.append("- Parser must come from grammars-v4 `.g4` (use `tools/antlr2lpg.py` then fix lexer).")
    md.append("- `language_subset` OK for huge dialects, but not a 50–150 line shared stub.")
    md.append("- `bash harness/run-one.sh <id>` must pass.")
    md.append("- `status.json` notes include `real_g4_port`.")
    md.append("")
    md.append("## Scan totals")
    md.append("")
    for k, v in report["totals"].items():
        md.append(f"- **{k}**: {v}")
    md.append("")
    md.append("## Waves")
    md.append("")
    md.append("| Wave | Count | Goal |")
    md.append("|------|------:|------|")
    md.append(f"| W1_soup_clear | {len(waves['W1_soup_clear'])} | Eliminate classic token soup |")
    md.append(f"| W2_mainstream | {len(waves['W2_mainstream'])} | Java/Python/JS/C#/Kotlin/Swift/Scala/core |")
    md.append(f"| W3_heavy_dialects | {len(waves['W3_heavy_dialects'])} | SQL/asm/verilog/cobol-scale subsets |")
    md.append(f"| W4_medium | {len(waves['W4_medium'])} | Mid-size underports |")
    md.append(f"| W5_long_tail | {len(waves['W5_long_tail'])} | Remaining long-tail |")
    md.append("")

    def dump_wave(title: str, items: list[dict], limit: int | None = None) -> None:
        md.append(f"## {title} ({len(items)})")
        md.append("")
        md.append("| id | tier | g4_lines | lpg_lines | nt_overlap | flags |")
        md.append("|----|------|--------:|----------:|-----------:|-------|")
        show = items if limit is None else items[:limit]
        for r in show:
            fl = ",".join(r["flags"][:6])
            md.append(
                f"| `{r['id']}` | {r.get('tier')} | {r.get('g4_lines')} | {r.get('lpg_lines')} | {r.get('nt_overlap')} | {fl} |"
            )
        if limit and len(items) > limit:
            md.append(f"| … | | | | | +{len(items) - limit} more in `_port_plan.json` |")
        md.append("")

    dump_wave("W1 — classic soup / missing parser", waves["W1_soup_clear"])
    dump_wave("W2 — mainstream languages", waves["W2_mainstream"])
    dump_wave("W3 — heavy dialects", waves["W3_heavy_dialects"])
    dump_wave("W4 — medium underports", waves["W4_medium"], limit=100)
    dump_wave("W5 — long tail", waves["W5_long_tail"], limit=50)

    md.append("## Agent rules")
    md.append("")
    md.append("1. NEVER write `nested token stream` / `item ::= atom` parsers.")
    md.append("2. Prefer: `python3 tools/antlr2lpg.py <id>` then hand-fix lexer + examples + harness.")
    md.append("3. Non-overlapping id batches only.")
    md.append("4. Re-run this scanner after each batch.")
    md.append("")
    md.append("Machine-readable: `tools/_port_plan.json`, `tools/_soup_ids.txt`")
    md.append("")

    (tools / "PORT_PLAN.md").write_text("\n".join(md) + "\n", encoding="utf-8")

    print("NEEDS_PORT", len(rows))
    print("SOUP", len(set(soup_ids)))
    print("WAVE_COUNTS", report["wave_counts"])
    print("TOTALS", report["totals"])
    print("wrote tools/PORT_PLAN.md tools/_port_plan.json tools/_soup_ids.txt")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
