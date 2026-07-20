# json (EBNF pilot)

Structural LPG port of [grammars-v4 `json/JSON.g4`](https://github.com/antlr/grammars-v4) using `%Options ebnf`.

- Parser nonterminals: `json`, `obj`, `pair`, `arr`, `value`
- Lists: `(pair (COMMA pair)*)?`, `(value (COMMA value)*)?`
- Lexer: JSON `STRING` (escapes / `\uXXXX`), `NUMBER`, keywords via `JsonKWLexer`
- Classic-BNF twin: [`../../bnf_example/json/`](../../bnf_example/json/)

```bash
bash harness/run-one.sh json
```
