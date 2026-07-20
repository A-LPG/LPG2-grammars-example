# ATerm (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `aterm/`](https://github.com/antlr/grammars-v4/tree/master/aterm).

## License

BSD (see original `aterm.g4` header).

## Files

| File | Role |
|------|------|
| `AtermLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `AtermKWLexer.gi` | Dummy filter (`xxx` → `X`) |
| `AtermParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh aterm
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- `function_` / bare `afun` factored as `afun opt_args`.
- Real exponent `ε` omitted (unused in examples).


Classic-BNF twin: [`../../bnf_example/aterm/`](../../bnf_example/aterm/).
