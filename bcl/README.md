# bcl (LPG)

Parse-level port of [antlr/grammars-v4 `bcl/`](https://github.com/antlr/grammars-v4/tree/master/bcl) (Binary Combinatory Logic).

## License

BSD (see original `bcl.g4` header).

## Files

| File | Role |
|------|------|
| `BclLexer.gi` | Tokens `00` / `01` / `1` |
| `BclKWLexer.gi` | Dummy keyword filter |
| `BclParser.g` | `term*` with `1 term term` |
| `examples/` | Synthetic (upstream has none) |

## Verify

```bash
../harness/run-one.sh bcl
```
