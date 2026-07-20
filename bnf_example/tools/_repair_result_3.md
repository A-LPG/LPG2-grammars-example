# REPAIR_3 result

Batch: `kirikiri-tjs`, `agc`, `sharc`, `powerquery`, `fusion-tables`, `swift/swift3`

Root cause: concurrent overwrite left **dummy KWLexers** (`Keyword ::= x x x`) and generic lexers using `makeToken($_IDENTIFIER)` instead of `checkForKeyWord()`. Keywords became IDENTIFIER → PARSE FAIL.

## Results

| id | harness | curated | quality | what fixed |
|----|---------|---------|---------|------------|
| kirikiri-tjs | **OK** | 3 | `language_subset` + `real_g4_port` | Rebuilt lexer/KW/parser subset: program/class/function/property/var/if/while + EQEQ/LT |
| agc | **OK** | 3 | `language_subset` + `real_g4_port` | Line-oriented lexer (WS/EOL/COMMENT); NOOP/ERASE KW; prog/line subset of agc.g4 |
| sharc | **OK** | 3 | `language_subset` + `real_g4_port` | R0–R15 + EQU KW; dual-add / labeled / EQU decl subset of SHARCParser.g4 |
| powerquery | **OK** | 3 | `language_subset` + `real_g4_port` | Added missing `SHARED` to KWLexer + lexer export (parser already had it) |
| fusion-tables | **OK** | 3 | `language_subset` + `real_g4_port` | SQL KW filter (K_SELECT…); select/insert/update/delete/create/drop/show/describe |
| swift/swift3 | **OK** | 3 | `language_subset` + `real_g4_port` | KW + ARROW/`>` lexer; func/struct/class/enum/if/while subset |

## Harness tails

```
OK: kirikiri-tjs (3 examples)
OK: agc (3 examples)
OK: sharc (3 examples)
OK: powerquery (3 examples)
OK: fusion-tables (3 examples)
OK: swift/swift3 (3 examples)
```

Re-verified with `bash harness/run-one.sh <id>` after status.json updates.
