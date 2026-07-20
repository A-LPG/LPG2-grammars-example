# LPG2 EBNF grammar pilot

Parse-level ports of [antlr/grammars-v4](https://github.com/antlr/grammars-v4) that use LPG2 **opt-in EBNF sugar** (`%Options ebnf`: `?` `*` `+` `(…)` / `[…]` / `{…}`).

Sibling corpus [`../bnf_example/`](../bnf_example/) keeps the same units in classic BNF (EBNF expanded to aux rules). This tree is a **pilot** — not a full 400-unit mirror yet.

CI (`.github/workflows/grammars-example.yml`) uses [`catalog.json`](catalog.json): `quality-gate` for `language_port` / `language_subset`; `smoke-optional` for `token_stream_smoke` (same pattern as `bnf_example`).

## Pilot units

| ID | Quality | Notes |
|----|---------|--------|
| `json` | `language_port` | `pair (COMMA pair)*` style lists |
| `cookie` | `language_port` | Baseline already using `%Options ebnf` in bnf_example |
| `arithmetic` | `language_port` | `equation*` + layered precedence |
| `csv` | `language_port` | `field (COMMA field)*` + `row+` |
| `nested` | `token_stream_smoke` | L0 nested `()`/`{}`/`[]` + atoms (CI smoke-optional) |

## Quick verify

From a full LPG2 checkout:

```bash
export LPG_BIN=$PWD/lpg2/build/lpg-v2.3.0
bash grammars-example/ebnf_example/harness/run-one.sh json
bash grammars-example/ebnf_example/harness/run-one.sh cookie
bash grammars-example/ebnf_example/harness/run-one.sh arithmetic
bash grammars-example/ebnf_example/harness/run-one.sh csv
bash grammars-example/ebnf_example/harness/run-one.sh nested
```

CI: `quality-gate` runs the four `language_port` units; `smoke-optional` runs `nested` (`token_stream_smoke`, non-blocking).

## Layout

| Path | Role |
|------|------|
| `harness/` | Java generate → compile → parse examples (same as bnf_example) |
| `tools/` | Symlinks to shared classify/report helpers |
| `json/`, `cookie/`, … | Per-unit `*Lexer.gi`, `*Parser.g` with `%Options ebnf`, examples |

## Porting rules

See [AGENTS.md](AGENTS.md). Lexer/examples come from the bnf_example unit; parser rules follow grammars-v4 EBNF shape under `%Options ebnf`. Do not shrink rules or demote `quality`.

EBNF reference: [docs/GRAMMAR_REFERENCE.md](../../docs/GRAMMAR_REFERENCE.md) § EBNF; dogfood: [examples/ebnf-call/](../../examples/ebnf-call/).
