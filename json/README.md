# json

Structural LPG port of [grammars-v4 `json/JSON.g4`](https://github.com/antlr/grammars-v4) (JSON itself is a small grammar).

- Parser nonterminals: `json`, `obj`, `pair`, `arr`, `value`
- Lexer: JSON `STRING` (escapes / `\uXXXX`), `NUMBER`, keywords via `JsonKWLexer`
- Not a nested token-stream soup

```bash
bash harness/run-one.sh json
```
