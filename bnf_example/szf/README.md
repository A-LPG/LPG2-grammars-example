# SZF (LPG)

Parse-level port of [antlr/grammars-v4 `szf`](https://github.com/antlr/grammars-v4/tree/master/szf).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `SzfLexer.gi` | Character lexer |
| `SzfKWLexer.gi` | Dummy KW filter |
| `SzfParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh szf
```

## Antlr → LPG notes

- `<group>` / `<region>` → `HEADER_START` / `REGION_START` tokens.
- ID allows `/._#` continuations (SFZ-style paths).
