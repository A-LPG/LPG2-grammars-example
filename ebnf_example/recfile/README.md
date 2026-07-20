# Recfile (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `recfile/`](https://github.com/antlr/grammars-v4/tree/master/recfile).

## License

BSD (see original `recfile.g4` header).

## Files

| File | Role |
|------|------|
| `RecfileLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `RecfileKWLexer.gi` | Dummy filter (`xxx` → `X`) |
| `RecfileParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh recfile
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- Continuation `(EOL '+')?` expanded to alternate productions.
- `#` comments → `skipToken()`; spaces/tabs outside `STRING` skipped.


Classic-BNF twin: [`../../bnf_example/recfile/`](../../bnf_example/recfile/).
