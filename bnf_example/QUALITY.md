# Quality levels (L0 / L1 / L2)

Honest grading for grammars-v4 → LPG ports. **`parse_ok` alone is not a language port.**

Stored field: `quality` in each unit’s `status.json` and in `catalog.json` (`quality_schema` / `quality_counts`).

## Mapping

| Informal | `quality` enum | Meaning |
|----------|----------------|---------|
| **L0** | `token_stream_smoke` | Generic nested token-stream (paren/brace/bracket + atoms). Smoke acceptance only. |
| **L1** | `language_subset` | Intentional curated subset — real-ish rules, not the full language. |
| **L2** | `language_port` | Language-shaped LPG grammar; intended as a real port. |
| — | `legacy` | Pre-v4 LPG grammar (not from this migration). |
| — | `unknown` | Unclassified. |

Tiers A/B/C/D in `catalog.json` are **size/migration buckets**, orthogonal to L0/L1/L2.

## CI

| Job | Selects | Required? |
|-----|---------|-----------|
| `quality-gate` | L1 + L2 (`language_subset`, `language_port`) with `parse_ok` | Yes |
| `smoke-optional` | L0 (`token_stream_smoke`) with `parse_ok` | Optional |

## How to improve a unit

1. **L0 → L1** — Replace the nested token-stream parser with real nonterminals for the language (even a small dialect). Point harness at `examples-curated/**` (or a tight smoke set). Keep large upstream dumps out of harness globs; quarantine with `tools/quarantine_unused_examples.py` if needed.
2. **L1 → L2** — Broaden rules toward the upstream grammar’s entry points; add diverse curated examples that exercise declarations, control flow, literals, etc. Avoid claiming L2 while still only accepting `IDENTIFIER` soup.
3. **Refresh grades** after edits:

```bash
python3 tools/classify_quality.py
python3 tools/report.py
bash harness/run-one.sh <unit-id>
```

4. **Do not** set `quality: language_port` by hand without a real parser body and multi-example harness green.

## Unused examples

Harness-unused upstream trees may live in `examples-upstream-unused/` (kept in-tree under ~100 MiB aggregate; see tool docstring). They are **not** harness inputs. Full corpora: [antlr/grammars-v4](https://github.com/antlr/grammars-v4).
