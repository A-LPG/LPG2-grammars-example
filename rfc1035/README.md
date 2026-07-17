# rfc1035 (LPG)

Parse-level port of [antlr/grammars-v4 `rfc1035/`](https://github.com/antlr/grammars-v4/tree/master/rfc1035) (`domain.g4`).

## License

BSD (see original `domain.g4` header).

## Files

| File | Role |
|------|------|
| `DomainLexer.gi` | `LABEL` / `.` / space |
| `DomainKWLexer.gi` | Dummy keyword filter |
| `DomainParser.g` | domain / subdomain |
| `examples/` | Copied from grammars-v4 (no `*.tree`) |

## Verify

```bash
../harness/run-one.sh rfc1035
```
