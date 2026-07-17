# rust

LPG **language_subset** of [antlr/grammars-v4 `rust`](https://github.com/antlr/grammars-v4/tree/master/rust).

Not a full Rust port. Covers:

- top-level `fn` with typed params (`mut` optional)
- `let` / `let mut` bindings, `if` / `else`, `return`
- expressions, calls, member/index, and simple `ident!(...)` macro calls

No modules, traits, generics, lifetimes, or pattern matching.

## Verify

```bash
bash harness/run-one.sh rust
```

Harness globs: `examples-curated/**/*.rs` (4 files).
