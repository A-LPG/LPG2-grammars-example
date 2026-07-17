# golang

LPG **language_subset** of [antlr/grammars-v4 `golang`](https://github.com/antlr/grammars-v4/tree/master/golang).

Not a full Go port. Covers:

- `package` + top-level `func` / `var`
- short declaration `:=`, typed params / result names as identifiers
- `if` / `else` blocks, `return`
- expressions: literals, calls, member/index, unary/binary ops, assignment

No channels, interfaces, methods, `for`, or `go` statements.

## Verify

```bash
bash harness/run-one.sh golang
```

Harness globs: `examples-curated/**/*.go` (4 files).
