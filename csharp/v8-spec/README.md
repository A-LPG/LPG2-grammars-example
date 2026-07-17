# csharp/v8-spec

LPG **language_subset** of [antlr/grammars-v4 `csharp/v8-spec`](https://github.com/antlr/grammars-v4/tree/master/csharp/v8-spec).

Not a full C# / ECMA-334 port. Covers:

- `class` with fields and methods (`public` / `static` modifiers)
- types: `int`, `void`, `string`, `bool`, or identifier names
- locals, `if` / `else`, `return`, `new Type(...)`
- expressions: literals, calls, member/index, unary/binary ops, assignment

No namespaces, generics, properties, LINQ, or pattern matching.

## Verify

```bash
bash harness/run-one.sh csharp/v8-spec
```

Harness globs: `examples-curated/**/*.cs` (4 files).
