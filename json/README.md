# JSON (LPG)

Parse-level port of [antlr/grammars-v4 `json/`](https://github.com/antlr/grammars-v4/tree/master/json).

## License

BSD (see original `JSON.g4` header).

## Files

| File | Role |
|------|------|
| `JsonLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `JsonKWLexer.gi` | `true` / `false` / `null` → `TRUE` / `FALSE` / `NULLLITERAL` |
| `JsonParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh json
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- `-> skip` → `skipToken()`.
- Parser literals `'true'` etc. become keyword-filter tokens (Java-safe names).
- List `(',' pair)*` → left-recursive `pair_list`.
