# TTM (LPG)

Parse-level port of [antlr/grammars-v4 `ttm`](https://github.com/antlr/grammars-v4/tree/master/ttm).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `TtmLexer.gi` | Character lexer |
| `TtmKWLexer.gi` | Dummy KW filter |
| `TtmParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh ttm
```

## Antlr → LPG notes

- `##<` / `#<` → `NEUTRAL` / `ACTIVE` (longest match first).
- STRING charset excludes `< > ;` so nesting stays in the parser.
