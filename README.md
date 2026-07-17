[![](https://vsmarketplacebadge.apphb.com/version-short/kuafuwang.lpg-vscode.svg)](https://marketplace.visualstudio.com/items?itemName=kuafuwang.lpg-vscode)

# LPG2-grammars-example

Grammars for [LPG v2](https://github.com/A-LPG/LPG2), including parse-level ports from [antlr/grammars-v4](https://github.com/antlr/grammars-v4).

**Honest quality note:** many units are harness-green (`parse_ok`) but only `token_stream_smoke` — not language grammars. See `catalog.json` → `quality_schema` and `quality_counts`.

## Quick verify

From a full LPG2 checkout (this repo as the `grammars-example` submodule):

```bash
bash harness/run-one.sh json
python3 tools/classify_quality.py
python3 tools/report.py
```

## Quality (from `catalog.json`)

| Quality | Count | Role |
|---------|-------|------|
| `language_port` | 34 | Real language-shaped ports |
| `language_subset` | 184 | Curated subsets (not full language) |
| `token_stream_smoke` | 172 | Generic nested token-stream smoke only |
| `legacy` | 5 | Pre-v4 LPG grammars |

Exact numbers: `python3 tools/report.py` or `quality_counts` in `catalog.json`.
Informal L0/L1/L2 ↔ enum mapping and how to improve a unit: [QUALITY.md](QUALITY.md).
Definitions: `quality_schema` in `catalog.json`.

CI required gate runs only `language_port` + `language_subset` (with `parse_ok`). Smoke units are optional. Details: [CONTRIBUTING.md](CONTRIBUTING.md).

## Layout

| Path | Role |
|------|------|
| `catalog.json` | Units + tiers A/B/C/D + **quality** + status |
| `QUALITY.md` | L0/L1/L2 ↔ `quality` enum; upgrade path |
| `harness/` | Java generate → compile → parse examples |
| `tools/` | `build_catalog.py`, `classify_quality.py`, `quarantine_unused_examples.py`, … |
| `json/`, `csv/`, … | Per-language ports (`*Lexer.gi`, `*Parser.g`, `examples/`) |
| `*/examples-upstream-unused/` | Harness-unused upstream dumps (kept; optional gitignore) |
| `java/`, `lpg/`, `leg/`, … | Legacy LPG grammars (pre-v4 migration) |

## Tiers

Size/migration buckets (orthogonal to quality):

- **A** — small combined grammars
- **B** — medium / split lexer-parser
- **C** — mainstream languages (often smoke first; few true `language_port`s yet)
- **D** — modes / huge SQL / Verilog families (same: scaffold+smoke ≠ language port)
