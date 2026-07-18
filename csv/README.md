# csv

Structural LPG port of grammars-v4 `csv/CSV.g4` (`csvFile` / `hdr` / `row` / `field`).

Lexer: `TEXT`, `STRING` (escaped `""`), `COMMA`, `NL`; empty fields allowed.

```bash
bash ../harness/run-one.sh csv
```
