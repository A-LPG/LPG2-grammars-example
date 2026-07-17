# CSV (LPG)

Parse-level port of [antlr/grammars-v4 `csv/`](https://github.com/antlr/grammars-v4/tree/master/csv).

## License

BSD (see original `CSV.g4` header).

## Files

| File | Role |
|------|------|
| `CsvLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `CsvKWLexer.gi` | Dummy filter (`xxx` → `X`; not used at tokenize time) |
| `CsvParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh csv
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + minimal KWLexer + Parser.
- No real keywords; `LexerBasicMapF` still needs KWLexer + exported `IDENTIFIER`.
- `'\r'? '\n'` → `NL` token (`LF` or `CR LF`).
- Empty `field` → `$empty` between commas.
- List `(',' field)*` → left-recursive `fields`.
- Escaped quote `""` inside `STRING` → `EscapedQuote`.
