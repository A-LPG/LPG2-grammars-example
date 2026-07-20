# postalcode (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `postalcode/`](https://github.com/antlr/grammars-v4/tree/master/postalcode).

## License

BSD (see original `postalcode.g4` header).

## Files

| File | Role |
|------|------|
| `PostalcodeLexer.gi` | Character lexer (`LETTER` / `DIGIT`) |
| `PostalcodeKWLexer.gi` | Dummy keyword filter |
| `PostalcodeParser.g` | `LETTER DIGIT` × 3 |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh postalcode
```


Classic-BNF twin: [`../../bnf_example/postalcode/`](../../bnf_example/postalcode/).
