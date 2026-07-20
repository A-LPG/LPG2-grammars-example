# FDO91 (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `fdo91`](https://github.com/antlr/grammars-v4/tree/master/fdo91).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `Fdo91Lexer.gi` | Character lexer |
| `Fdo91KWLexer.gi` | Dummy KW filter |
| `Fdo91Parser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh fdo91
```

## Antlr → LPG notes

- `'atom$'` → `ATOM_DOLLAR` token.
- GID longest-match before bare NUMBER.
- `literal` excludes `ID` so LALR does not absorb the next command into `literal_args` (bare ID args still parse as nested `atoms`).


Classic-BNF twin: [`../../bnf_example/fdo91/`](../../bnf_example/fdo91/).
