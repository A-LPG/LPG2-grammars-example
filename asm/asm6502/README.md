# asm/asm6502

Structural LPG port of grammars-v4 `asm/asm6502/asm6502.g4`
(`prog` / `line` / `instruction` / `argument`).

Lexer: EOL, NAME, NUMBER (`$` hex), `#`, `;` comments; opcodes via FoldedCase KW filter.
