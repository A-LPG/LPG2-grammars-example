# lambda (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `lambda/`](https://github.com/antlr/grammars-v4/tree/master/lambda).

## License

BSD (see original `lambda.g4` header).

## Files

| File | Role |
|------|------|
| `LambdaLexer.gi` | VARIABLE / λ / `.` / parens |
| `LambdaKWLexer.gi` | Dummy keyword filter |
| `LambdaParser.g` | expression / function / application |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh lambda
```


Classic-BNF twin: [`../../bnf_example/lambda/`](../../bnf_example/lambda/).
