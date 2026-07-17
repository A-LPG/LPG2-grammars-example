# kotlin/kotlin

LPG **language_subset** of [antlr/grammars-v4 `kotlin/kotlin`](https://github.com/antlr/grammars-v4/tree/master/kotlin/kotlin).

Not a full Kotlin port (and not `kotlin-formal`). Covers:

- top-level `fun` / `val` / `var`
- typed params and optional return types
- `if` / `else` blocks, `return`
- expressions: literals, calls, member/index, unary/binary ops, assignment

No classes, lambdas, null-safety operators, or coroutines.

## Verify

```bash
bash harness/run-one.sh kotlin/kotlin
```

Harness globs: `examples-curated/**/*.kt` (4 files).
