# Lisp (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `lisp/`](https://github.com/antlr/grammars-v4/tree/master/lisp).

## License

BSD (see original `lisp.g4` header).

## Files

| File | Role |
|------|------|
| `LispLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `LispKWLexer.gi` | Dummy filter (`xxx` → `X`) |
| `LispParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Minimal s-expressions (upstream has none) |

## Verify

```bash
../harness/run-one.sh lisp
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- `ATOMIC_SYMBOL` is lowercase letters plus digits `1-9` only (no `0`, per upstream).
- `WS` → `skipToken()`.
- `s_expression+` → left-recursive `s_expressions`.


Classic-BNF twin: [`../../bnf_example/lisp/`](../../bnf_example/lisp/).
