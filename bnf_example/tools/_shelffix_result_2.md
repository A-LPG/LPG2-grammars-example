# SHELFFIX_2 result

Batch IDs from `_shelffix_batches.json` → `SHELFFIX_2`.

Reference quality: `json/` (g4-shaped nonterminals, language lexer, ≥3 multi-line curated examples, harness OK).

| id | harness | quality | notes |
|----|---------|---------|-------|
| `r` | OK (3) | `language_subset` + `real_g4_port` | Replaced soup lexer; mirrors `R.g4` `prog`/`expr`/`formlist`/`sublist`; NL + `<-` ASSIGN |
| `asm/asm6502` | OK (3) | `language_subset` + `real_g4_port` | EOL/NAME/NUMBER/`#`/`;` comments; FoldedCase KW opcodes; g4 `prog`/`line`/`instruction` |
| `turtle-doc` | OK (3) | `language_subset` + `real_g4_port` | `turtleDoc`/`statement`/`triples`; PName via `IDENTIFIER COLON` |
| `calculator` | OK (3) | `language_port` + `real_g4_port` | Already g4-shaped; curated multi-line equations |
| `creole` | OK (3) | `language_port` + `real_g4_port` | Already g4-shaped; curated wiki/nowiki examples |
| `python/python2-js` | OK (3) | `language_subset` + `real_g4_port` | Structural port kept; multi-line curated (INDENT optional) |
| `rego` | OK (3) | `language_subset` + `real_g4_port` | Fixed Name/String/EqOper lexer; package/import/rules examples |
| `xpath/xpath1` | OK (3) | `language_subset` + `real_g4_port` | Cleaned `main::=expr`; path/predicate/axes examples |

## Verify

```bash
for id in r asm/asm6502 turtle-doc calculator creole python/python2-js rego xpath/xpath1; do
  bash harness/run-one.sh "$id" || exit 1
done
```

All eight: **PARSE OK**.

## Quality policy

- Small full g4 mirrors (`calculator`, `creole`) → `language_port`
- Larger / incomplete vs upstream g4 → `language_subset` + `real_g4_port`
- No token-stream `item`/`atom` soup; no single-token shelf examples
