# McKeeman Form (LPG)

Parse-level port of [antlr/grammars-v4 `mckeeman-form/`](https://github.com/antlr/grammars-v4/tree/master/mckeeman-form).

## License

See upstream `LICENSE` / grammars-v4.

## Files

| File | Role |
|------|------|
| `McKeemanFormLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `McKeemanFormKWLexer.gi` | Dummy filter (`xxx` → `X`) |
| `McKeemanFormParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh mckeeman-form
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- Significant whitespace: `INDENTATION` (4 spaces), `SPACE`, `NEWLINE`.
- `nothing` is indented `""` (empty `STRING` token).
