#!/usr/bin/env python3
"""Generate LPG grammars-example performance report (grammars-v4 performance.md style).

Measures Java harness lex+parse time via harness/PerfDriver.java.

Examples:
  python3 tools/perf_report.py --preset reference
  python3 tools/perf_report.py --ids json,csv,java/java --runs 3
  python3 tools/perf_report.py --preset ports --rebuild
"""
from __future__ import annotations

import argparse
import json
import math
import os
import statistics
import subprocess
import sys
import time
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REPO = ROOT.parent
HARNESS = ROOT / "harness"
RUNTIME = Path(
    os.environ.get(
        "LPG_RUNTIME_CLASSES",
        str(REPO / "runtime" / "lpg-runtime" / "target" / "classes"),
    )
)


def mean_sem(xs: list[float]) -> tuple[float, float]:
    if not xs:
        return float("nan"), float("nan")
    m = statistics.fmean(xs)
    if len(xs) < 2:
        return m, 0.0
    # SEM = stdev / sqrt(n); use sample stdev
    sem = statistics.stdev(xs) / math.sqrt(len(xs))
    return m, sem


def fmt(m: float, sem: float, digits: int = 4) -> str:
    if m != m:  # NaN
        return "n.a."
    if sem == 0 or sem != sem:
        return f"{m:.{digits}g}"
    return f"{m:.{digits}g} ± {sem:.{digits}g}"


def load_catalog() -> list[dict]:
    cat = json.loads((ROOT / "catalog.json").read_text(encoding="utf-8"))
    return list(cat.get("grammars") or [])


def resolve_ids(preset: str | None, ids_arg: str | None) -> list[str]:
    if ids_arg:
        return [x.strip() for x in ids_arg.split(",") if x.strip()]
    grams = load_catalog()
    by_id = {g["id"]: g for g in grams}
    if preset == "reference":
        # Small/medium structural ports for a quick baseline table
        want = [
            "json",
            "json5",
            "csv",
            "tsv",
            "toml",
            "calculator",
            "abnf",
            "edn",
            "lisp",
            "r",
            "rego",
            "iri",
            "iso8601",
            "smiles",
            "cmake",
            "pgn",
            "srt",
            "stl",
            "metric",
            "ltl",
            "java/java",
            "python/python3",
            "javascript/javascript",
            "golang",
            "rust",
            "c",
            "sql/sqlite",
            "sql/postgresql",
            "sql/tsql",
            "sql/hive/v4",
        ]
        return [i for i in want if i in by_id]
    if preset == "ports":
        return sorted(
            g["id"]
            for g in grams
            if g.get("quality") == "language_port" and g.get("parse_ok")
        )
    if preset == "gate":
        return sorted(
            g["id"]
            for g in grams
            if g.get("quality") in ("language_port", "language_subset")
            and g.get("parse_ok")
        )
    raise SystemExit("need --preset or --ids")


def example_files(uid: str, harness: dict) -> list[Path]:
    unit = ROOT / uid
    globs = harness.get("example_globs") or ["examples/**/*"]
    files: list[Path] = []
    for g in globs:
        files.extend(sorted(p for p in unit.glob(g) if p.is_file()))
    out: list[Path] = []
    seen: set[str] = set()
    for p in files:
        if p.name.startswith(".") or "out-java" in p.parts:
            continue
        rp = str(p.resolve())
        if rp in seen:
            continue
        seen.add(rp)
        out.append(p)
    return out


def ensure_built(uid: str, rebuild: bool) -> bool:
    out = ROOT / uid / "out-java"
    marker = list(out.glob("*Parser.java")) if out.is_dir() else []
    if marker and not rebuild:
        return True
    print(f"==> build {uid}", flush=True)
    r = subprocess.run(
        ["bash", str(HARNESS / "run-one.sh"), uid],
        cwd=str(ROOT),
        capture_output=True,
        text=True,
    )
    if r.returncode != 0:
        print(f"BUILD FAIL {uid}", file=sys.stderr)
        tail = (r.stdout + r.stderr)[-800:]
        print(tail, file=sys.stderr)
        return False
    return True


def compile_perf_driver() -> Path:
    out = HARNESS / "PerfDriver.class"
    src = HARNESS / "PerfDriver.java"
    # Always recompile if source newer or missing
    if (
        out.is_file()
        and out.stat().st_mtime >= src.stat().st_mtime
        and out.stat().st_mtime >= (HARNESS / "ParseDriver.java").stat().st_mtime
    ):
        return out
    print("==> compile PerfDriver", flush=True)
    subprocess.check_call(
        [
            "javac",
            "-encoding",
            "UTF-8",
            "-cp",
            str(RUNTIME),
            "-d",
            str(HARNESS),
            str(src),
        ]
    )
    return out


def run_perf_once(uid: str, harness: dict, path: Path) -> dict | None:
    pkg = harness["package"]
    lexer = harness["lexer"]
    parser = harness["parser"]
    cp = f"{RUNTIME}:{ROOT / uid / 'out-java'}:{HARNESS}"
    r = subprocess.run(
        [
            "java",
            "-cp",
            cp,
            "PerfDriver",
            pkg,
            lexer,
            parser,
            str(path),
            "--json",
        ],
        capture_output=True,
        text=True,
    )
    line = (r.stdout or "").strip().splitlines()
    if not line:
        return {
            "ok": False,
            "file": path.name,
            "path": str(path),
            "error": (r.stderr or "no_output")[-200:],
            "pt_ms": float("nan"),
            "ot_ms": float("nan"),
            "tt_ms": float("nan"),
            "tokens": 0,
            "bytes": path.stat().st_size if path.is_file() else 0,
        }
    try:
        return json.loads(line[-1])
    except json.JSONDecodeError:
        return {
            "ok": False,
            "file": path.name,
            "error": line[-1][:200],
            "pt_ms": float("nan"),
            "ot_ms": float("nan"),
            "tt_ms": float("nan"),
            "tokens": 0,
            "bytes": 0,
        }


def aggregate_unit(uid: str, runs: list[list[dict]]) -> dict:
    """runs: list of per-file result lists (one inner list per repetition)."""
    # Sum PT/OT/TT/tokens across files within a run, then mean±SEM across runs
    pt_runs, ot_runs, tt_runs, tok_runs = [], [], [], []
    file_pts: dict[str, list[float]] = defaultdict(list)
    ok_all = True
    n_files = 0
    bytes_total = 0
    for rep in runs:
        if not rep:
            ok_all = False
            continue
        n_files = max(n_files, len(rep))
        pt = sum(float(x.get("pt_ms") or 0) for x in rep if x.get("ok"))
        ot = sum(float(x.get("ot_ms") or 0) for x in rep if x.get("ok"))
        tt = sum(float(x.get("tt_ms") or 0) for x in rep if x.get("ok"))
        tok = sum(int(x.get("tokens") or 0) for x in rep if x.get("ok"))
        if not all(x.get("ok") for x in rep):
            ok_all = False
        pt_runs.append(pt / 1000.0)  # seconds
        ot_runs.append(ot / 1000.0)
        tt_runs.append(tt / 1000.0)
        tok_runs.append(tok)
        for x in rep:
            file_pts[x.get("file") or "?"].append(float(x.get("pt_ms") or 0) / 1000.0)
            if not bytes_total:
                pass
        if rep:
            bytes_total = sum(int(x.get("bytes") or 0) for x in rep)

    # TPS = total_tokens / PT  (use mean tokens / mean PT)
    pt_m, pt_s = mean_sem(pt_runs)
    ot_m, ot_s = mean_sem(ot_runs)
    tt_m, tt_s = mean_sem(tt_runs)
    tok_m = statistics.fmean(tok_runs) if tok_runs else 0.0
    tps_runs = []
    for pt, tok in zip(pt_runs, tok_runs):
        if pt > 0:
            tps_runs.append(tok / pt)
    tps_m, tps_s = mean_sem(tps_runs)

    # Post-warmup: if >=2 files, TPS from files 2..N using first run's per-file means
    ordered = list(file_pts.keys())
    post_tps_m = post_tps_s = float("nan")
    speedup_m = speedup_s = float("nan")
    if len(ordered) >= 2:
        # mean PT per file across reps
        file_mean = {f: statistics.fmean(vs) for f, vs in file_pts.items() if vs}
        # approximate tokens/file from last successful run
        last = next((r for r in reversed(runs) if r and all(x.get("ok") for x in r)), [])
        tok_by = {x.get("file"): int(x.get("tokens") or 0) for x in last}
        cold_f = ordered[0]
        warm_files = ordered[1:]
        cold_pt = file_mean.get(cold_f, 0.0)
        warm_pt = sum(file_mean.get(f, 0.0) for f in warm_files)
        warm_tok = sum(tok_by.get(f, 0) for f in warm_files)
        cold_tok = tok_by.get(cold_f, 0)
        if warm_pt > 0 and cold_pt > 0 and cold_tok > 0:
            post_tps_m = warm_tok / warm_pt
            cold_tps = cold_tok / cold_pt
            speedup_m = post_tps_m / cold_tps if cold_tps > 0 else float("nan")
            post_tps_s = 0.0
            speedup_s = 0.0

    return {
        "id": uid,
        "ok": ok_all,
        "files": n_files,
        "bytes": bytes_total,
        "tokens_mean": tok_m,
        "pt_s": pt_m,
        "pt_sem": pt_s,
        "ot_s": ot_m,
        "ot_sem": ot_s,
        "tt_s": tt_m,
        "tt_sem": tt_s,
        "tps": tps_m,
        "tps_sem": tps_s,
        "post_warmup_tps": post_tps_m,
        "post_warmup_tps_sem": post_tps_s,
        "post_warmup_speedup": speedup_m,
        "post_warmup_speedup_sem": speedup_s,
    }


def write_report(rows: list[dict], meta: dict, md_path: Path, json_path: Path) -> None:
    rows_sorted = sorted(rows, key=lambda r: r["id"])
    payload = {"meta": meta, "grammars": rows_sorted}
    json_path.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")

    lines = [
        "# LPG grammars-example performance",
        "",
        f"Generated: `{meta['generated_at']}`  ",
        f"Host: `{meta.get('host', '?')}`  ",
        f"Java: `{meta.get('java', '?')}`  ",
        f"Runs per unit: **N={meta['runs']}** (mean ± SEM)  ",
        f"Preset/ids: `{meta.get('selection', '?')}`  ",
        "",
        "Method: `harness/PerfDriver.java` over each unit’s harness example globs ",
        "(prefer `examples-curated/`). **PT** = lex + parse; **OT** = construct/overhead; ",
        "**TT** = wall time for one pass over all example files; ",
        "**TPS** = total tokens / PT.",
        "",
        "Inspired by [antlr/grammars-v4 `performance.md`](https://github.com/antlr/grammars-v4/blob/master/performance.md).",
        "",
        "## Column key",
        "",
        "| Label | Description |",
        "|---|---|",
        "| `PT` | Parse work time (lex + parse), sum across example files |",
        "| `OT` | Overhead (`TT − PT`): lexer/parser construction etc. |",
        "| `TT` | Total wall-clock for one pass over all example files |",
        "| `TPS` | Tokens per second (`tokens / PT`) |",
        "| `Post-warmup TPS` | TPS on files 2…N (excludes first file); `n.a.` if &lt;2 files |",
        "| `Post-warmup Speed Up` | Post-warmup TPS / first-file TPS |",
        "",
        "## Results",
        "",
        "| Grammar | ok | files | tokens | PT (s) | OT (s) | TT (s) | TPS | Post-warmup TPS | Post-warmup Speed Up |",
        "|---------|----|------:|-------:|--------|--------|--------|-----|-----------------|----------------------|",
    ]
    for r in rows_sorted:
        link = f"[`{r['id']}`]({r['id']}/)"
        lines.append(
            "| {id} | {ok} | {files} | {tok} | {pt} | {ot} | {tt} | {tps} | {pw} | {su} |".format(
                id=link,
                ok="yes" if r["ok"] else "**no**",
                files=r["files"],
                tok=f"{r['tokens_mean']:.0f}",
                pt=fmt(r["pt_s"], r["pt_sem"]),
                ot=fmt(r["ot_s"], r["ot_sem"]),
                tt=fmt(r["tt_s"], r["tt_sem"]),
                tps=fmt(r["tps"], r["tps_sem"], 4),
                pw=fmt(r["post_warmup_tps"], r["post_warmup_tps_sem"], 4),
                su=fmt(r["post_warmup_speedup"], r["post_warmup_speedup_sem"], 4),
            )
        )
    lines += [
        "",
        "## Reproduce",
        "",
        "```bash",
        "cd grammars-example",
        f"python3 tools/perf_report.py --preset {meta.get('preset') or 'reference'} --runs {meta['runs']}",
        "```",
        "",
        f"Machine-readable: [`{json_path.name}`]({json_path.name})",
        "",
    ]
    md_path.write_text("\n".join(lines), encoding="utf-8")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--preset", choices=["reference", "ports", "gate"])
    ap.add_argument("--ids", help="comma-separated grammar ids")
    ap.add_argument("--runs", type=int, default=3)
    ap.add_argument("--rebuild", action="store_true", help="force harness rebuild before timing")
    ap.add_argument("--skip-build", action="store_true", help="only time units with existing out-java")
    ap.add_argument("-o", "--md", type=Path, default=ROOT / "performance.md")
    ap.add_argument("--json", type=Path, default=ROOT / "performance.json")
    args = ap.parse_args()

    ids = resolve_ids(args.preset, args.ids)
    if not ids:
        print("no ids selected", file=sys.stderr)
        return 2

    compile_perf_driver()

    try:
        java_v = subprocess.check_output(["java", "-version"], stderr=subprocess.STDOUT, text=True).splitlines()[0]
    except Exception:
        java_v = "?"
    host = os.uname().nodename if hasattr(os, "uname") else "?"

    rows: list[dict] = []
    t_wall0 = time.time()
    for uid in ids:
        hj = ROOT / uid / "harness.json"
        if not hj.is_file():
            print(f"skip {uid}: no harness.json", flush=True)
            continue
        harness = json.loads(hj.read_text(encoding="utf-8"))
        out = ROOT / uid / "out-java"
        if args.skip_build and not (out.is_dir() and list(out.glob("*Parser.java"))):
            print(f"skip {uid}: no out-java", flush=True)
            continue
        if not args.skip_build:
            if not ensure_built(uid, args.rebuild):
                rows.append(
                    {
                        "id": uid,
                        "ok": False,
                        "files": 0,
                        "bytes": 0,
                        "tokens_mean": 0,
                        "pt_s": float("nan"),
                        "pt_sem": float("nan"),
                        "ot_s": float("nan"),
                        "ot_sem": float("nan"),
                        "tt_s": float("nan"),
                        "tt_sem": float("nan"),
                        "tps": float("nan"),
                        "tps_sem": float("nan"),
                        "post_warmup_tps": float("nan"),
                        "post_warmup_tps_sem": float("nan"),
                        "post_warmup_speedup": float("nan"),
                        "post_warmup_speedup_sem": float("nan"),
                    }
                )
                continue
        files = example_files(uid, harness)
        if not files:
            print(f"skip {uid}: no examples", flush=True)
            continue
        print(f"==> perf {uid} ({len(files)} files × {args.runs} runs)", flush=True)
        reps: list[list[dict]] = []
        for _ in range(args.runs):
            reps.append([run_perf_once(uid, harness, f) for f in files])
        row = aggregate_unit(uid, reps)
        rows.append(row)
        print(
            f"    PT={fmt(row['pt_s'], row['pt_sem'])}s  TPS={fmt(row['tps'], row['tps_sem'])}  ok={row['ok']}",
            flush=True,
        )

    meta = {
        "generated_at": datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ"),
        "runs": args.runs,
        "preset": args.preset,
        "selection": args.ids or args.preset,
        "host": host,
        "java": java_v,
        "units": len(rows),
        "wall_s": round(time.time() - t_wall0, 2),
    }
    write_report(rows, meta, args.md, args.json)
    print(f"Wrote {args.md} and {args.json} ({len(rows)} units, {meta['wall_s']}s)", flush=True)
    return 0 if all(r.get("ok") for r in rows) else 1


if __name__ == "__main__":
    sys.exit(main())
