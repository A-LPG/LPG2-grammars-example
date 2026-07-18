# FIX_6 TRUE PORT result

**Date:** 2026-07-18  
**Batch:** `tools/_fix_batches.json` → FIX_6  
**Bar:** `tools/TRUE_PORT_BAR.md` + `tools/FORBIDDEN_SOUP.md`  
**LPG:** `lpg2/build-plan/lpg-v2.3.0` (non-ASAN)  
**Harness:** all 10 IDs → `OK` via `bash harness/run-one.sh <id>`

## Summary

| id | parser lines | soup? | parse_ok | curated example | notes |
|----|-------------:|:-----:|:--------:|-----------------|-------|
| z | 798 | no | yes | `section.zed` (`$Z section demo $E`) | structural; ASCII `$Z`/`$E` stand-ins for box ZED/END (BasicMap) |
| algol60 | 288 | no | yes | `assign.a60` | Identifier/Semi_/Assign_/Unsigned_number lexer align |
| kuka | 442 | no | yes | `main.src` DEF+DECL | NEWLINE-aware data section |
| rexx | 635 | no | yes | `guess.rex` assign+if+say | VAR_SYMBOL KW default; BR_O/EOL |
| pascal | 414 | no | yes | `prog.pas` var/if/assign | NUM_INT; `=` assign per g4 port |
| tnsnames | 355 | no | yes | `listener.ora` DESCRIPTION/ADDRESS | NUMBER fix; LSNR-style (CONNECT_DATA KW still weak) |
| xpath/xpath31 | 640 | no | yes | `child.xpath` `child::book/title` | SS/OP/… remaps; `//` abbrev not green yet |
| webidl | 436 | no | yes | `link.idl` interface+attrs | real_g4_port; extendedAttributeList optional |
| antlr/antlr2 | 343 | no | yes | `expr.g` class Parser+rule | replaced thin `grammar T;` |
| less | 226 | no | yes | `colors.less` upstream vars/rulesets | Identifier/Color/BlockStart; COLOR as ident |

All marked `language_subset` + `real_g4_port` + `antlr2lpg_structural_port`. No nested token-stream soup.

## Especially upgraded thin harness examples

- **webidl:** `interface Foo{}` → HTMLLinkElement-style attributes  
- **antlr/antlr2:** `grammar T;` → `class ExprParser extends Parser; expr : IDENTIFIER ;`  
- **less:** empty file → upstream `example1.less` (@vars + rulesets)  
- (mumps is FIX_7 — not in this batch)

## Harness fixes (shared)

1. **`harness/ParseDriver.java`:** success = `DeterministicParser.parse()` without `BadParseException` (so `automatic_ast=none` null Ast is OK).  
2. **`harness/run-one.sh`:** stub `Ast.java` when template still references Ast under `automatic_ast=none`.

## Honest gaps

- **z:** box-drawing ZED/END need Unicode getKind; curated uses `$Z`/`$E` stand-ins.  
- **xpath:** `//book/title` not curated-green; `child::book/title` is.  
- **tnsnames:** full `CONNECT_DATA` keyword path incomplete; LSNR DESCRIPTION/ADDRESS/PORT OK.  
- **less:** g4 parser ~199 lines → LPG 226 is proportional (not THIN vs g4 parser alone).

## Commands

```bash
export LPG_BIN=$REPO/lpg2/build-plan/lpg-v2.3.0
for id in z algol60 kuka rexx pascal tnsnames xpath/xpath31 webidl antlr/antlr2 less; do
  bash harness/run-one.sh "$id" || exit 1
done
```
