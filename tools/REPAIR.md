# REPAIR wave — fix verified failures / dump soup / fake-green

Batches: `tools/_repair_batches.json`

## Bar (same as SHELF_FIX)

1. Compare `/Users/kuafu/Downloads/grammars-v4-master/<id>/*.g4`
2. Parser NTs from g4 — **forbidden**: nested token-stream soup; `items ::= item` + `item ::= IDENTIFIER`
3. Language lexer (keywords/tokens), not generic IDENTIFIER-only
4. ≥3 **multi-line** curated examples under `examples-curated/`
5. `bash harness/run-one.sh <id>` must print `OK: <id>` — paste tail of log in report
6. `status.json`: `language_subset` + `real_g4_port` (or honest `language_port` only if full small g4)

## Critical (this wave)

- Agents previously claimed OK while re-verify PARSE FAIL — **do not lie**. If harness fails, fix until green or document blocker.
- **Only edit IDs in your batch** (no cross-writes; parallel agents).
- Keep `IDENTIFIER` in lexer `%Export` if KW filter template needs `TK_IDENTIFIER`.
- Reference: `json/` (structural tiny g4 port).

## Report

Write `tools/_repair_result_<N>.md` with table: id | harness | curated count | quality | what fixed.
