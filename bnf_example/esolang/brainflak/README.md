# Brainflak (LPG)

Parse-level port of [antlr/grammars-v4 `esolang/brainflak`](https://github.com/antlr/grammars-v4/tree/master/esolang/brainflak).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `BrainflakLexer.gi` | Character lexer |
| `BrainflakKWLexer.gi` | Dummy KW filter |
| `BrainflakParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh esolang/brainflak
```

## Antlr → LPG notes

- `WS: . -> skip` → catch-all skip.
- Requires at least one statement (`statement+`).
