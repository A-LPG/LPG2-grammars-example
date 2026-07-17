# useragent (LPG)

Parse-level port of [antlr/grammars-v4 `useragent/`](https://github.com/antlr/grammars-v4/tree/master/useragent).

## License

BSD (see original `useragent.g4` header).

## Files

| File | Role |
|------|------|
| `UseragentLexer.gi` | STRING / COMMENT / `/` / `.` |
| `UseragentKWLexer.gi` | Dummy keyword filter |
| `UseragentParser.g` | product / version / comment |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh useragent
```
