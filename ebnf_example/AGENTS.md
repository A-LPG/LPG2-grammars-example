# Agent notes (ebnf_example pilot)

Playbook for the **EBNF** pilot corpus. Hard rules match [`../bnf_example/AGENTS.md`](../bnf_example/AGENTS.md) (no shrinking, no demotion, Java type-name ban, Linux case sensitivity). Differences below.

Upstream Antlr source: [antlr/grammars-v4](https://github.com/antlr/grammars-v4) (local clone often at `/Users/kuafu/Downloads/grammars-v4-master`). Classic-BNF twin: [`../bnf_example/`](../bnf_example/).

## What this tree is

LPG v2 ports that keep grammars-v4 **EBNF shapes** via `%Options ebnf` instead of expanding to `opt_` / `list_` aux rules.

Acceptance is the same as bnf_example: structural nonterminals, language lexer, multi-line examples, honest `quality` in `status.json`. Additionally:

- Every `*Parser.g` must include `%Options ebnf` (may share a line with `la=`).
- `quality_notes` should include `ebnf_sugar`.
- Operator terminals must be aliases (`PLUS`, `COMMA`, …), never bare `+` / `*` / `?` when ebnf is on.

## Testing

```bash
cd grammars-example/ebnf_example
export LPG_BIN=../../lpg2/build/lpg-v2.3.0   # or your build
bash harness/run-one.sh json
```

Success prints `OK: <id> (... examples)`. Never claim OK without a fresh run.

**CI:** parent workflow `.github/workflows/grammars-example.yml`:

| Job | Selects in this tree |
|-----|----------------------|
| `quality-gate` (required) | `language_port` + `language_subset` |
| `smoke-optional` (non-blocking) | `token_stream_smoke` (pilot: `nested`) |

Keep `catalog.json` / `status.json` in sync when adding units.

## Porting checklist (EBNF pilot)

1. Copy lexer / KWLexer / examples / `harness.json` from `../bnf_example/<id>/`.
2. Diff against `grammars-v4/<id>/*.g4` for list/optional shapes.
3. Rewrite `*Parser.g` with `%Options ebnf` — prefer `X*`, `X?`, `(A B)*`, `(A \| B)` over hand-expanded BNF.
4. Keep layered left-recursion for **precedence** (arithmetic) when that matches the LALR port; use EBNF for lists/optionals (`equation*`, unary `(PLUS \| MINUS)*`).
5. Prefer `(EQUAL value)?` over ISO `[EQUAL value]` when brackets collide with terminal names or prior CI bugs.
6. `bash harness/run-one.sh <id>` green; `status.json` ≥ twin quality + `ebnf_sugar`.

## LPG2 bugs / gaps

If generate or parse fails in a way that looks like an EBNF expander bug:

1. Minimal fixture under `lpg2/tests/fixtures/ebnf_*.g`.
2. Fix `lpg2/src/ebnf.cpp` (and docs if surface syntax changes).
3. Re-run ctest + this unit's `run-one.sh`.

Reference: [docs/GRAMMAR_REFERENCE.md](../../docs/GRAMMAR_REFERENCE.md), [examples/ebnf-call/](../../examples/ebnf-call/).
