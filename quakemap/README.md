# Quake map (LPG)

Parse-level port of [antlr/grammars-v4 `quakemap`](https://github.com/antlr/grammars-v4/tree/master/quakemap).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `QuakemapLexer.gi` | Character lexer |
| `QuakemapKWLexer.gi` | Dummy KW filter |
| `QuakemapParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh quakemap
```

## Antlr → LPG notes

- `coord*` / `num*` → optional list nonterminals.
- TEXT requires letter + at least one more `[A-Za-z0-9_]`.
