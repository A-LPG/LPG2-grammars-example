# Skull (LPG)

Parse-level port of [antlr/grammars-v4 `esolang/skull`](https://github.com/antlr/grammars-v4/tree/master/esolang/skull).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `SkullLexer.gi` | Character lexer |
| `SkullKWLexer.gi` | Dummy KW filter |
| `SkullParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh esolang/skull
```

## Antlr → LPG notes

- `:ASC:` / `:NUM:` → dedicated lexer tokens.
- Parser rule `while` → `whilecmd` (Java reserved).
