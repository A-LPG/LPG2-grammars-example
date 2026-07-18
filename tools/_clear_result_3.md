# CLEAR_3 result（清空花架子）

Batch: `tools/_clear_shelf_batches.json` → `CLEAR_3`  
IDs: `asm/asm6502`, `argus`, `turtle-doc`, `powerbuilderdw`, `orwell`  
Policy: `tools/SHELF_FIX.md` — g4 nonterminals, ≥3 real curated examples, harness OK, no token-stream soup.

## Summary

| id | harness | g4 lines | LPG parser lines | examples | quality | notes |
|---|---|---:|---:|---:|---|---|
| `asm/asm6502` | OK (3) | 438 | 69 | 3 | `language_subset` | real_g4_port; prog/line/instruction/argument; opcodes via `OPCODE` KW filter |
| `argus` | OK (4) | 433 | 937 | 4 | `language_subset` | real_g4_port; antlr2lpg + left-factored `module_def`; ASCII minus (no U+2212) |
| `turtle-doc` | OK (3) | 417 | 105 | 3 | `language_subset` | real_g4_port; turtleDoc/statement/triples; PName ≈ `IDENTIFIER COLON` |
| `powerbuilderdw` | OK (3) | 389 | 81 | 3 | `language_subset` | real_g4_port; RELEASE/DATAWINDOW/HEADER/COLUMN structural subset |
| `orwell` | OK (4) | 381 | 78 | 4 | `language_subset` | real_g4_port; syndecl+def_/pat/rhs/term subset; multi-def after syndecl |

All five: **no nested token-stream soup**. Harness: `bash harness/run-one.sh <id>` → OK.

## Method

1. Compared each unit to `/Users/kuafu/Downloads/grammars-v4-master/<id>/*.g4`.
2. Grew/kept g4-shaped parsers via `antlr2lpg` + hand fixups (not `item ::= atom` soup).
3. Lexer fixes: asm `OPCODE` KW; argus unicode-minus removed + `INT_LITERAL`; turtle `@prefix` / PName; PB folded-case KW; orwell `EQEQ` + app_tail.
4. ≥3 multiline curated samples under `examples-curated/`; `harness.json` points there.
5. Honest `status.json`: `language_subset` + `real_g4_port` (not full language_port).

## Example evidence (first ≤5 lines)

### `asm/asm6502`

#### `countdown.asm`
```
start LDY #$FF
loop1 LDX #$FF
    INX
    BNE loop1
    INY
```

#### `labels.asm`
```
reset JMP main
main LDA #$00
    TAX
    INX
    BNE main
```

#### `org_lda.asm`
```
    ORG $2000
start LDA #$01
    STA $80
    LDA $80
    RTS
```

### `argus`

#### `equates_mod.argus`
```
M = equates
  X = int
  Y = bool
  Z = real
end M
```

#### `proc_returns.argus`
```
one = proc () returns (int)
  return 1
end one
```

#### `proc_empty.argus`
```
noop = proc ()
  pause
end noop
```

#### `iter_empty.argus`
```
count = iter ()
  pause
end count
```

### `turtle-doc`

#### `prefix_triple.ttl`
```
@prefix ex: <http://example.org/> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .

ex:alice ex:knows ex:bob .
```

#### `literals.ttl`
```
@prefix ex: <http://example.org/> .

ex:item ex:name "widget" .
ex:item ex:count 42 .
ex:item ex:ok true .
```

#### `blank_collection.ttl`
```
@prefix ex: <http://example.org/> .

ex:list ex:item ex:one .
ex:list ex:item ex:two .
ex:node ex:link ex:target .
```

### `powerbuilderdw`

#### `header_detail.srd`
```
RELEASE 12;
DATAWINDOW(UNITS=0 COLOR=16777215)
HEADER(HEIGHT=92)
DETAIL(HEIGHT=64)
```

#### `release_dw.srd`
```
RELEASE 9;
DATAWINDOW()
```

#### `table_column.srd`
```
RELEASE 9;
DATAWINDOW(UNITS=0)
COLUMN(NAME=EVENT_NAME)
```

### `orwell`

#### `identity.or`
```
Id == Int
f x = x
```

#### `power.or`
```
Nat == Int
power x n = 1
```

#### `list_def.or`
```
List == Int
roots a b c = [x, y]
```

#### `synonym.or`
```
Num == Int
Bool == Num
```

## Honest gaps

- **asm/asm6502**: opcode keywords collapsed to single `OPCODE` terminal (g4 lists each opcode).
- **argus**: leading `equate*` before top form dropped; U+2212 minus → ASCII `MINUS`.
- **turtle-doc**: PNAME not full PN_LOCAL lexer; lone `a` local-name conflicts with `LetterA` KW.
- **powerbuilderdw**: not full TABLE/RETRIEVE/export surface.
- **orwell**: not full type/op/construct universe; consecutive `def_` without intervening syndecl is LALR-ambiguous under skipped WS.

## Commands

```bash
export LPG_BIN=$REPO/lpg2/build-plan/lpg-v2.3.0
cd grammars-example
for id in asm/asm6502 argus turtle-doc powerbuilderdw orwell; do
  bash harness/run-one.sh "$id" || exit 1
done
```
