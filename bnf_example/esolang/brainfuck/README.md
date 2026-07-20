# Brainfuck (LPG)

Parse-level port of [antlr/grammars-v4 `esolang/brainfuck`](https://github.com/antlr/grammars-v4/tree/master/esolang/brainfuck).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `BrainfuckLexer.gi` | Character lexer |
| `BrainfuckKWLexer.gi` | Dummy KW filter |
| `BrainfuckParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh esolang/brainfuck
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- `WS: . -> skip` → catch-all `SkipChar` + `skipToken()`.
- Loop brackets exported as `LPAREN`/`RPAREN` (ANTLR names).
