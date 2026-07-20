# Callable (LPG)

Parse-level port of [antlr/grammars-v4 `callable/`](https://github.com/antlr/grammars-v4/tree/master/callable).

## License

BSD (see original `callable_.g4` header).

## Files

| File | Role |
|------|------|
| `CallableLexer.gi` | Character lexer |
| `CallableKWLexer.gi` | Dummy keyword filter |
| `CallableParser.g` | LALR parser (`automatic_ast=nested`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh callable
```
