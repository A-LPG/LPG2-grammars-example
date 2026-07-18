# FIX_8 TRUE PORT result

Batch IDs: `sql/sqlite`, `golang` only.

## Summary

| id | parser lines | soup? | harness | quality |
|----|-------------:|-------|---------|---------|
| golang | ~590 | no | OK (2 curated) | `language_subset` + `real_g4_port` |
| sql/sqlite | ~1227 | no | OK (7 curated) | `language_subset` + `real_g4_port` |

## golang

- Kept structural `antlr2lpg` port (`GolangParser.g`, start `sourceFile`).
- LALR fixups (not soup):
  - Drop bare `typeName{...}` from `literalType` (was stealing `IDENTIFIER` before `)` / `{`).
  - Remove `conversion` / `methodExpr` as primary heads (clash with calls / qualified names).
  - Simplify `arguments` to expression-list only.
- Curated examples: `smoke.go`, `package_func_if.go` (package / func params / if / `:=` / calls).
- Honest subset: no bare `Type{...}` composites; no type-leading call args; residual LALR conflicts remain.

`bash harness/run-one.sh golang` → **OK**

## sql/sqlite

- Kept large structural port (`SqlSqliteParser.g` ~1200+ lines, start `parse`).
- Hand-fixed lexer to match SQLite g4 ops/literals (not generic soup lexer):
  - `=` → `ASSIGN`, `==` → `EQ`, `<=`/`>=`/`!=`/`<>`/`||`/`<<`/`>>` mapped correctly
  - SQL `'...'` strings (`''` escape), `--` / `/* */` comments, bind params, blob
  - Removed `charlit` that truncated `'alice'` → `'a'` + `lice`
- Parser: left-factored `column_ref` for `a.id` style names.
- Curated SQL: create/drop, insert, select/where, join, update/delete, WITH+join.

`bash harness/run-one.sh sql/sqlite` → **OK**

## Not done

- `c` / `cpp` intentionally skipped (not FIX_8).
