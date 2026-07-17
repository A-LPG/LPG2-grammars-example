# p (LPG)

Parse-level port of [antlr/grammars-v4 `p/`](https://github.com/antlr/grammars-v4/tree/master/p).

## License

BSD (see original `p.g4` header).

## Files

| File | Role |
|------|------|
| `PLexer.gi` | `R` / `λ` (AfterASCII) / parens |
| `PKWLexer.gi` | Dummy keyword filter |
| `PParser.g` | symbol / iterate |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh p
```
