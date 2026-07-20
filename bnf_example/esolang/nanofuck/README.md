# esolang/nanofuck (LPG)

Parse-level port of [antlr/grammars-v4 `esolang/nanofuck/`](https://github.com/antlr/grammars-v4/tree/master/esolang/nanofuck).

## License

BSD (see original `nanofuck.g4` header).

## Files

| File | Role |
|------|------|
| `NanofuckLexer.gi` | `*` `{` `}` |
| `NanofuckKWLexer.gi` | Dummy keyword filter |
| `NanofuckParser.g` | Expression / brace nesting |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh esolang/nanofuck
```
