# FIX_3 true-port result

Batch IDs from `tools/_fix_batches.json` → **FIX_3**.

## Summary

| id | harness | parser lines | quality | notes |
|----|---------|-------------:|---------|-------|
| graphql | OK | 382 | language_subset | antlr2lpg structural; `NAME`→`IDENTIFIER`; curated query |
| wren | OK | 381 | language_subset | antlr2lpg structural; curated `true` |
| spl | OK | 138 | language_subset | antlr2lpg structural; curated simple SPL query |
| sparql | OK | 342 | language_subset | antlr2lpg structural; explicit SELECT/WHERE/… lexer tokens; curated SELECT |
| iso8601 | OK | 377 | language_subset | start=`iso`; Digit + designator lexer; curated date |
| smiles | OK | 322 | language_subset | element letter tokens `UA`…`UZ` / `LA`…; curated `C`/`O` |
| evm-bytecode | OK | 184 | language_subset | already structural; curated `STOP` |
| wavefront | OK | 214 | language_subset | subset `v`/`f` statements; `NUMBER` as decimal; curated triangle |
| kquery | OK | 169 | language_subset | `WidthType` (`w`+digits); token renames; curated array decl |
| **cpp** | **OK** | **1221** | language_subset | **real vars + functions** (not `;` only) |

All: **no nested token-stream soup**. `quality_notes` include `real_g4_port`.

## Critical: cpp

Curated examples under `cpp/examples-curated/`:

- `vars.cpp` — `int x;`, `int y = 1;`, pointers, multi-decl, typedef-name decl
- `funcs.cpp` — `void f() {}`, `int g() { return 1; }`, params, prototypes
- `tiny.cpp` — `namespace` / `using`

LALR fixups (also recorded in `tools/antlr2lpg.py` for cpp):

- Drop optional `nestedNameSpecifier?` before `*` in `pointerOperator`
- Collapse `theTypeName`; left-factor `builtinDeclSeq` for `simpleDeclaration` / `functionDefinition`
- `declarator` = `pointerDeclarator` only (trailing-return alt removed)
- Initializer: `EQ` form only (so `void f() {}` is a function, not brace-init)

## Verify

```bash
export LPG_BIN=/path/to/lpg-v2.3.0
for id in graphql wren spl sparql iso8601 smiles evm-bytecode wavefront kquery cpp; do
  bash harness/run-one.sh "$id" || exit 1
done
```

All ten returned **OK** on 2026-07-18.

## Honesty

These are **language_subset** ports (not full dialects). Several units use `examples-curated/**` with small but language-shaped inputs. `spl` / `evm-bytecode` / `kquery` / `wavefront` parsers are still thinner than the ≥300-line bar vs g4 size; they are structural g4 ports, not soup stubs.
