# TSV (LPG)

Parse-level port of [antlr/grammars-v4 `tsv/`](https://github.com/antlr/grammars-v4/tree/master/tsv).

## License

BSD (see original `tsv.g4` header).

## Files

| File | Role |
|------|------|
| `TsvLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `TsvKWLexer.gi` | Dummy filter (`xxx` → `X`) |
| `TsvParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh tsv
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- `TEXT` excludes tab (and comma/newline/quote) so `TAB` tokens stay distinct.
- `row*` after `hdr` → optional `rows` list.
