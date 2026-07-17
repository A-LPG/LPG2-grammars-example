# javascript/javascript

LPG **language_subset** of [antlr/grammars-v4 `javascript/javascript`](https://github.com/antlr/grammars-v4/tree/master/javascript/javascript).

Not a full ECMAScript port. The parser covers a program of statements:

- `var` / `let` / `const` bindings
- `function` declarations
- `if` / `else` (block bodies)
- `return`
- expressions: literals, calls, member/index access, unary/binary ops, assignment

## Files

| File | Role |
|------|------|
| `JavascriptLexer.gi` | Character lexer + comments |
| `JavascriptKWLexer.gi` | Keywords → Java-safe tokens (`FUNCTION`, `NULLLITERAL`, …) |
| `JavascriptParser.g` | LALR subset parser |
| `examples-curated/` | Harness inputs (excerpts shaped from v4 examples) |

## Verify

```bash
bash harness/run-one.sh javascript/javascript
```

Harness globs: `examples-curated/**/*.js` (6 files). Full v4 `examples/` are far beyond this subset.
