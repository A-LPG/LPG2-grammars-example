# javascript/typescript

LPG **language_subset** of [antlr/grammars-v4 `javascript/typescript`](https://github.com/antlr/grammars-v4/tree/master/javascript/typescript).

Not a full TypeScript / TSX port. Covers a program of statements:

- `var` / `let` / `const` with optional `: Type` annotations
- `function` declarations with typed params / return type
- `type` aliases and simple `interface` member lists
- `if` / `else` (block bodies), `return`
- expressions: literals, calls, member/index access, unary/binary ops, assignment

## Verify

```bash
bash harness/run-one.sh javascript/typescript
```

Harness globs: `examples-curated/**/*.ts` (4 files). Full v4 `examples/` are beyond this subset.
