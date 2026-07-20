# Arithmetic (EBNF pilot)

Parse-level port of [antlr/grammars-v4 `arithmetic/`](https://github.com/antlr/grammars-v4/tree/master/arithmetic) using `%Options ebnf`.

- `file_ ::= equation*`
- Unary: `(PLUS | MINUS) factor`
- Precedence still layered left-recursion for LALR

Classic-BNF twin: [`../../bnf_example/arithmetic/`](../../bnf_example/arithmetic/).

## Verify

```bash
bash harness/run-one.sh arithmetic
```
