# LOOP (LPG)

Parse-level port of [antlr/grammars-v4 `esolang/loop`](https://github.com/antlr/grammars-v4/tree/master/esolang/loop).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `LoopLexer.gi` | Character lexer |
| `LoopKWLexer.gi` | LOOP / DO / END keywords |
| `LoopParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh esolang/loop
```

## Antlr → LPG notes

- `':='` → `ASSIGN ::= ':' '='` (avoids illegal `Char_:=` Java symbol).
- Keywords via KWLexer + `KWLexerFoldedCaseMapF` (source uses uppercase `LOOP`/`DO`/`END`).
