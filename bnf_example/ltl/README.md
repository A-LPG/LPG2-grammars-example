# ltl

LPG port of antlr/grammars-v4 `ltl` (`ltl.g4`).

g4-shaped nonterminals: `file_` → `proposition` with `binop` / `unaryop` (U/W/R, G/F/X, true/false, ATOMIC).

Subset notes: g4 Unicode operators `→ ∧ ∨ ⌐` are ASCII digraphs `->` `&&` `||` `~` (LexerBasicMapF).

```bash
bash harness/run-one.sh ltl
```
