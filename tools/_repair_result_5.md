# REPAIR_5 result

Exclusive IDs: `apt`, `bibtex`, `chip8`, `muparser`, `r`, `asm/asm6502`

| id | harness | curated | quality | what fixed |
|----|---------|---------|---------|------------|
| apt | OK: apt (3 examples) | 3 | `language_subset` + `real_g4_port` | g4-shaped `record`/`optionsR`/`uri`/`components`; OptionName KW filter; multi-line curated sources.list |
| bibtex | OK: bibtex (3 examples) | 3 | `language_subset` + `real_g4_port` | already structural `@entry`/field/value; harness → `examples-curated/` with quoted STRING fields (brace values out of subset) |
| chip8 | OK: chip8 (3 examples) | 3 | `language_subset` + `real_g4_port` | lexer: opcodes before ADDR/BYTE; ADDR/BYTE require leading digit so `ADD`≠ADDR; 3 opcode curated files |
| muparser | OK: muparser (3 examples) | 3 | `language_subset` + `real_g4_port` | layered expr port kept; `NOT` unary; 3 curated assign/func/logic examples |
| r | OK: r (3 examples) | 3 | `language_subset` + `real_g4_port` | rewrote broken antlr2lpg soup → layered assign/call/if/for/while + NL/`<-` lexer; curated green |
| asm/asm6502 | OK: asm/asm6502 (3 examples) | 3 | `language_subset` + `real_g4_port` | verified existing prog/line/instruction/opcode port + 3 curated; status notes clarified |

## Harness tails

```
OK: apt (3 examples)
OK: bibtex (3 examples)
OK: chip8 (3 examples)
OK: muparser (3 examples)
OK: r (3 examples)
OK: asm/asm6502 (3 examples)
```

## Notes

- BibTeX subset: quoted `STRING_LITERAL` + integers only (brace-wrapped field values from g4 not ported).
- Chip-8 ADDR/BYTE are digit-leading hex so mnemonics like `ADD`/`AND` are not swallowed as addresses.
