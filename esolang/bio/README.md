# Bio (LPG)

Parse-level port of [antlr/grammars-v4 `esolang/bio/`](https://github.com/antlr/grammars-v4/tree/master/esolang/bio).

## License

BSD (see original `bio.g4` header).

## Files

| File | Role |
|------|------|
| `BioLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `BioKWLexer.gi` | `0o`/`1o`/`0i`/`1i`/`x`/`y`/`z` keywords |
| `BioParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../../harness/run-one.sh esolang/bio
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- Opcodes `0o`/`1o`/`0i`/`1i` and blocks `x`/`y`/`z` are lexer tokens (`ZERO_O`…`BLOCK_Z`).
- `//` comments and WS → `skipToken()`.
