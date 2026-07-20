[![](https://vsmarketplacebadge.apphb.com/version-short/kuafuwang.lpg-vscode.svg)](https://marketplace.visualstudio.com/items?itemName=kuafuwang.lpg-vscode)

# LPG2-grammars-example

Grammars for [LPG v2](https://github.com/A-LPG/LPG2), including parse-level ports from [antlr/grammars-v4](https://github.com/antlr/grammars-v4).

**Honest quality note:** `parse_ok` alone is not a language port. Prefer `language_port` / `language_subset` with `real_g4_port` notes. Avoid nested token-stream soup and trivial examples. See `catalog.json` → `quality_schema`.

## Agent / AI entry

| Doc | Role |
|-----|------|
| [AGENTS.md](AGENTS.md) | How to test and port a unit (LPG harness) — **start here for agents** |
| [CLAUDE.md](CLAUDE.md) | Thin pointer (grammars-v4-style filename) → `AGENTS.md` |
| [GLOSSARY.md](GLOSSARY.md) | Port / LPG / ANTLR ambiguity terms |
| [CONTRIBUTING.md](CONTRIBUTING.md) | Layout, CI, Antlr→LPG cheatsheet |
| [QUALITY.md](QUALITY.md) | L0/L1/L2 ↔ `quality` enum |

## Quick verify

From a full LPG2 checkout (this repo as the `grammars-example` submodule):

```bash
bash harness/run-one.sh json
python3 tools/classify_quality.py
python3 tools/report.py
```

## Performance

LPG harness timings (lex+parse), grammars-v4-style table:

```bash
python3 tools/perf_report.py --preset reference   # baseline set
python3 tools/perf_report.py --preset ports        # all language_port
```

See [performance.md](performance.md) (machine-readable: [performance.json](performance.json)).

## Quality (from `catalog.json`)

| Quality | Count | Role |
|---------|-------|------|
| `language_port` | 77 | Real language-shaped ports |
| `language_subset` | 298 | Curated subsets (not full language) |
| `token_stream_smoke` | 15 | Generic nested token-stream smoke only |
| `legacy` | 5 | Pre-v4 LPG grammars |

Exact numbers: `python3 tools/report.py` or `quality_counts` in `catalog.json`.
Informal L0/L1/L2 ↔ enum mapping: [QUALITY.md](QUALITY.md).

CI required gate runs only `language_port` + `language_subset` (with `parse_ok`). Smoke units are optional. Details: [CONTRIBUTING.md](CONTRIBUTING.md).

## Layout

| Path | Role |
|------|------|
| `catalog.json` | Units + tiers A/B/C/D + **quality** + status |
| `harness/` | Java generate → compile → parse examples |
| `tools/` | `classify_quality.py`, `antlr2lpg.py`, shelf/repair docs, … |
| `json/`, `csv/`, … | Per-language ports (`*Lexer.gi`, `*Parser.g`, `examples-curated/`) |
| `*/examples-upstream-unused/` | Harness-unused upstream dumps (kept; optional gitignore) |
| `java/`, `lpg/`, `leg/`, … | Legacy LPG grammars (pre-v4 migration) |

## Tiers

Size/migration buckets (orthogonal to quality):

- **A** — small combined grammars
- **B** — medium / split lexer-parser
- **C** — mainstream languages
- **D** — modes / huge SQL / Verilog families

## House rules (from grammars-v4, adapted)

- Examples that exercise the feature are **required** for ports and bug fixes.
- Do not claim `language_port` without a structural parser and multi-line harness-green examples.
- Keyword / reserved-name clashes: append `_` to nonterminals when needed (same tradition as grammars-v4).
- Thank contributors; keep reviews focused on parse honesty, not vanity line counts.
