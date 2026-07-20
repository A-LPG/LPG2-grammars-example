# VBA Like (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `vba/vba_like/`](https://github.com/antlr/grammars-v4/tree/master/vba/vba_like).

## License

See upstream `vba_like` / grammars-v4 licensing.

## Files

| File | Role |
|------|------|
| `VbaLikeLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `VbaLikeKWLexer.gi` | Dummy filter (`xxx` → `X`) |
| `VbaLikeParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Valid patterns only (`pattern01`, `pattern03`) |

## Verify

```bash
../../harness/run-one.sh vba/vba_like
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- Specials `?*#[ ]!-` are distinct tokens; remaining chars → `CHAR`.
- Negative / incomplete examples (`pattern02`) intentionally omitted.


Classic-BNF twin: [`../../bnf_example/vba/vba_like/`](../../bnf_example/vba/vba_like/).
