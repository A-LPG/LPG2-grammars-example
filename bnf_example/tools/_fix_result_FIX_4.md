# FIX_4 TRUE PORT result

Batch from `tools/_fix_batches.json` → **FIX_4**.

Bar: `TRUE_PORT_BAR.md` / `FORBIDDEN_SOUP.md`. Method: `antlr2lpg.py` + lexer/token hand-fixes + `examples-curated/` + `harness/run-one.sh`.

## antlr/antlr4 (honest subset)

- Upstream meta-grammar is `ANTLRv4Parser.g4` (~416 lines, 67 rules), not the recursive `examples/**` tree (~329k lines of *other* languages).
- LPG port keeps structural NTs from that parser (`grammarSpec`, rule/lexer specs, alts, etc.).
- Curated `.g4` samples exercise grammar/parser/lexer decls and alternatives. Soft-lex: RULE_REF/TOKEN_REF≈IDENTIFIER; no full ACTION/charset lexer.
- Status: `language_subset` + `real_g4_port` — **not** a claim to parse every file under the examples dump.

## Results

| id | harness | parser lines | rules≈ | curated | soup? |
|---|---|---:|---:|---:|---|
| `antlr/antlr4` | OK | 422 | 146 | 4 | no |
| `ruleworks` | OK | 824 | 207 | 2 | no |
| `solidity` | OK | 990 | 318 | 2 | no |
| `bcpl` | OK | 678 | 206 | 2 | no |
| `asm/masm` | OK | 480 | 81 | 2 | no |
| `vaxscan` | OK | 702 | 177 | 2 | no |
| `apex` | OK | 910 | 298 | 2 | no |
| `stringtemplate` | OK | 103 | 28 | 2 | no |
| `idl` | OK | 844 | 304 | 2 | no |
| `v` | OK | 457 | 153 | 2 | no |

## Notes / blockers

- **stringtemplate**: STGParser-only subset (~28 rules / 103 lines). Full grammars-v4 unit also has STParser + mode-heavy lexers; harness uses real `name() ::= "..."` group templates. Marked `language_subset`, not full ST.
- **asm/masm**: instruction smoke (`mov`/`add`/`ret`) via added `smoke_insns` alt; full directive/segment coverage still LALR/lexer-limited.
- **vaxscan**: empty module body path fixed (`module_statement_list` nullable + header `SEMI`); not a full VAXScan corpus.

## Status

All ten harness **OK**. `quality=language_subset`, notes include `real_g4_port` + `antlr2lpg_structural_port`. No nested token-stream soup.

## Tooling fixes landed in `antlr2lpg.py`

- Strip `@parser::members` / `@lexer::members` (fixed bogus `members` swallowing `sourceFile` on `v`).
- Preserve empty `|` alternatives (ruleworks `opt_*` nullability).
- Same-line alt dedupe; letter-fragment keywords (Apex `PUBLIC : P U B L I C`); hyphenated KW + identifier hyphens.
- Token remaps for FIX_4 dialects; drop `charlit` stealing `'hello'`.
