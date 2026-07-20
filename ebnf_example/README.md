# LPG2 EBNF grammar corpus

Parse-level ports of [antlr/grammars-v4](https://github.com/antlr/grammars-v4) that use LPG2 **opt-in EBNF sugar** (`%Options ebnf`: `?` `*` `+` `(…)` / `[…]` / `{…}`).

Sibling corpus [`../bnf_example/`](../bnf_example/) keeps the same units in classic BNF (EBNF expanded to aux rules).

CI (`.github/workflows/grammars-example.yml`) uses [`catalog.json`](catalog.json): `quality-gate` for `language_port` / `language_subset`; `smoke-optional` for `token_stream_smoke` (same pattern as `bnf_example`).

## Coverage

| Quality | Count | Notes |
|---------|------:|--------|
| `language_port` | 146 | Full `bnf_example` language_port set (tiers A–D) |
| `token_stream_smoke` | 1 | `nested` (L0) |

Not yet migrated: `language_subset` and `legacy` units.

## Quick verify

From a full LPG2 checkout:

```bash
export LPG_BIN=$PWD/lpg2/build/lpg-v2.3.0
bash grammars-example/ebnf_example/harness/run-one.sh json
bash grammars-example/ebnf_example/harness/run-one.sh alloy
bash grammars-example/ebnf_example/harness/run-one.sh nested
```

Scaffold / catalog helpers:

```bash
cd grammars-example/ebnf_example
python3 tools/port_from_bnf.py <id>…          # copy twin + stamp ebnf + catalog
python3 tools/rewrite_common_ebnf.py <id>…    # conservative list/optional rewrites
python3 tools/port_from_bnf.py --refresh-catalog
# wave lists used for B/C/D language_port migration:
# tools/remaining_language_port_waves.json
```

## Layout

| Path | Role |
|------|------|
| `harness/` | Java generate → compile → parse examples |
| `tools/port_from_bnf.py` | Copy from `bnf_example`, stamp `%Options ebnf`, refresh catalog |
| `tools/rewrite_common_ebnf.py` | Safe BNF→EBNF list/optional heuristics (verify with `run-one`) |
| `catalog.json` | Unit index for CI gates |
| `*/` | Per-unit `*Lexer.gi`, `*Parser.g` with `%Options ebnf`, examples |

## Porting rules

See [AGENTS.md](AGENTS.md). Lexer/examples come from the bnf_example unit; parser rules follow grammars-v4 EBNF shape under `%Options ebnf`. Do not shrink rules or demote `quality`.

EBNF reference: [docs/GRAMMAR_REFERENCE.md](../../docs/GRAMMAR_REFERENCE.md) § EBNF; dogfood: [examples/ebnf-call/](../../examples/ebnf-call/).
