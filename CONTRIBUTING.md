# Contributing LPG ports from antlr/grammars-v4

Goal: every grammars-v4 unit eventually lives under this repo with **honest** parse-level acceptance.
`parse_ok` alone is **not** enough — a green harness on a generic nested token-stream is smoke only, not a language port.

## Quality levels

Each unit has a `quality` field in `status.json` and `catalog.json` (see `catalog.json` → `quality_schema`).
Informal **L0 / L1 / L2** mapping and upgrade path: [QUALITY.md](QUALITY.md).

| Level | Meaning |
|-------|---------|
| `language_port` (L2) | Language-shaped LPG grammar; intended as a real port |
| `language_subset` (L1) | Intentional curated subset — not the full language |
| `token_stream_smoke` (L0) | Generic nested token-stream; smoke acceptance only |
| `legacy` | Pre-existing LPG grammar (not from grammars-v4 migration) |
| `unknown` | Unclassified |

**Acceptance for a real port** = `quality` in (`language_port`, `language_subset`) **and** `parse_ok: true`.
Do **not** claim a language is “ported” when `quality` is `token_stream_smoke`.

## Layout per unit

```
<id>/
  README.md
  <Name>Lexer.gi
  <Name>KWLexer.gi      # required when using LexerBasicMapF.gi
  <Name>Parser.g
  harness.json
  examples/
  status.json
```

`harness.json` example:

```json
{
  "package": "lpg.grammars.json",
  "lexer": "JsonLexer",
  "parser": "JsonParser",
  "example_globs": ["examples/**/*"]
}
```

Optional: `lexer_file` / `parser_file` / `kwlexer` when names differ from the class;
`parser_template` (default `dtParserTemplateF.gi`) for backtracking grammars
(e.g. legacy `java/` uses `btParserTemplateF.gi`).

## Verify

From this repo root (parent LPG2 checkout expected at `../`):

```bash
bash harness/run-one.sh json
bash harness/run-tier.sh A
python3 tools/classify_quality.py   # refresh quality + relative source_ref
python3 tools/report.py             # tier + quality progress
```

Requires:

- `lpg` binary (`LPG_BIN` or `../lpg2/build/lpg-v*`)
- JDK (`javac` / `java`)
- Compiled Java runtime at `../runtime/lpg-runtime/target/classes` (harness will compile sources if missing)

## CI policy

Workflow: `.github/workflows/grammars-example.yml` (in the parent LPG2 repo).

| Job | Units | Required? |
|-----|-------|-----------|
| `quality-gate` | `quality` ∈ {`language_port`, `language_subset`} and `parse_ok` | **Yes** (blocks merge) |
| `smoke-optional` | `quality` = `token_stream_smoke` and `parse_ok` | Optional (`continue-on-error: true`) |

Nightly / manual runs may exercise smoke units; they must not fail the main gate when a real port is green.

## Antlr → LPG cheatsheet

| Antlr | LPG |
|-------|-----|
| `grammar X;` combined | Split `XLexer.gi` + `XParser.g` (+ `XKWLexer.gi`) |
| `options { tokenVocab=... }` | `%options import_terminals=XLexer.gi` |
| Lexer `-> skip` | Action `skipToken()` |
| `-> channel(HIDDEN)` | `skipToken()` or `makeComment(...)` |
| `fragment` | Ordinary nonterminal in `%Rules` |
| `mode` / `pushMode` | No direct support — rewrite lexer strategy |
| `'true'` parser literal | Keyword filter export (avoid Java keywords: use `TRUE`) |
| `(',' x)*` | Left-recursive list nonterminal |
| EOF | `%Eof EOF_TOKEN` |
| Host actions `{...}` | `/. ... ./` (port later; not required for parse-only) |

Templates (from parent LPG2 tree):

- Lexer: `LexerTemplateF.gi` + `LexerBasicMapF.gi`
- Keywords: `KeywordTemplateF.gi` + `KWLexerLowerCaseMapF.gi`
- Parser: `dtParserTemplateF.gi`, `automatic_ast=nested`

## Tiers (see `catalog.json`)

Migration size buckets (orthogonal to **quality**):

- **A** — small combined, no modes
- **B** — split lexer/parser or medium size
- **C** — mainstream large languages
- **D** — modes / huge SQL / Verilog families
- **legacy** — pre-existing LPG grammars (`java/`, `lpg/`, …)

Wave C/D often land first as `token_stream_smoke` scaffolds; promote to `language_subset` / `language_port` only when the grammar is language-shaped.

## Status values

`status.json`:

- `ported` + `parse_ok: true` — harness green (**still check `quality`**)
- `quality` — one of the levels above
- `blocked` + `blockers: [...]` — documented; still in catalog
- `pending` — not started
- `failed` — harness ran but examples failed

Do **not** use calculator-style token seeding for acceptance.
