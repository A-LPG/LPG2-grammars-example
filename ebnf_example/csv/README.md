# csv (EBNF pilot)

Structural LPG port of grammars-v4 `csv/CSV.g4` using `%Options ebnf` (`csvFile` / `hdr` / `row` / `field`).

- `csvFile ::= hdr row+`
- `row ::= field (COMMA field)* NL`

Lexer: `TEXT`, `STRING` (escaped `""`), `COMMA`, `NL`; empty fields allowed.

Classic-BNF twin: [`../../bnf_example/csv/`](../../bnf_example/csv/).

```bash
bash harness/run-one.sh csv
```
