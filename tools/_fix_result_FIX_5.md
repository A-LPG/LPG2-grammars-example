# FIX_5 TRUE PORT result

Batch IDs from `_fix_batches.json` → **FIX_5**.

Bar: structural `antlr2lpg` ports, no nested token-stream soup, curated language-shaped examples, `bash harness/run-one.sh <id>` OK, `status.json` notes include `real_g4_port` + honest `language_subset`.

## Summary

| id | harness | parser lines | curated examples | notes |
|----|---------|-------------:|------------------|-------|
| `asn/asn_3gpp` | OK | 742 | `tiny.asn`, `module_types.asn` | Folded-case KW map; `::=` ASSIGN_OP; NT prefix renames |
| `asn/asn` | OK | 724 | `tiny.asn`, `module_types.asn` | Same ASN fixes; SEQUENCE / ENUM-ish modules |
| `zig` | OK | 743 | `tiny.zig`, `main.zig` | INTEGER/FLOAT→NUMBER + dedupe; `const` / `pub fn` |
| `smtlibv2` | OK | 498 | `tiny.smt2`, `declare_assert.smt2`, `bool_core.smt2` | QF_UF declare/assert/check-sat |
| `unreal_angelscript` | OK | 780 | `smoke.as`, `actor.as` | ClassKw AST fix; **curated = `import` subset** (class bodies still LALR-hard) |
| `glsl` | OK | 490 | `simple.frag`, `fn_loop.vert` | Punctuation remap; type/control keywords; `#version`-free curated |
| `asm/asm8086` | OK | 323 | `smoke.asm`, `prog.asm` | EOL-from-newline; `mov`/`add`/`sub`/`ret` |
| `sdl` | OK | 406 | `tiny.sdl`, `module2.sdl` | **MODULE header subset** (richer SDL still weak) |
| `asl` | OK | 623 | `assign.asl`, `assign2.asl` | ID collapse; newline→SEMI; assignment alts simplified for LALR |
| `basic` | OK | 496 | `tiny.bas`, `gosub.bas` | Folded-case KW; PRINT/GOSUB/END programs |

**All 10: harness OK. Soup: none.**

## Common fixes applied

1. Regenerated / kept structural parsers via `python3 tools/antlr2lpg.py --include-huge <id>` (no `item ::= atom | paren`).
2. Lexer/parser token alignment (Antlr names → emitted LPG tokens).
3. `KWLexerFoldedCaseMapF.gi` where uppercase source keywords were mis-tokenized as `IDENTIFIER` under `LowerCaseMap`.
4. Java AST clashes: NT prefix renames (`grp_13` vs `grp_130`); `Class`→`ClassKw` for Angelscript.
5. Harness pointed at `examples-curated/**/*`; `status.json`: `language_subset` + `real_g4_port`.

## Honesty / remaining gaps

- **unreal_angelscript**: large structural parser, but curated harness examples are `import` modules only — class/method bodies still trip LALR (`COLONCOLON` / `simpleTypeSpecifier` paths).
- **sdl**: curated examples are MODULE headers only.
- **asl**: assignment productions narrowed for reliable curated variable assigns; not full Shlaer–Mellor ASL.
- **glsl / zig / asm8086 / asn\***: language_subset — real constructs, not full dialects.

## Verify

```bash
cd grammars-example
for id in asn/asn_3gpp asn/asn zig smtlibv2 unreal_angelscript glsl asm/asm8086 sdl asl basic; do
  bash harness/run-one.sh "$id" || exit 1
done
```
