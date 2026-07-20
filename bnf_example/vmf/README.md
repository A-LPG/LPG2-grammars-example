# VMF (LPG)

Parse-level port of [antlr/grammars-v4 `vmf/`](https://github.com/antlr/grammars-v4/tree/master/vmf).

## License

BSD (see original `vmf.g4` header).

## Files

| File | Role |
|------|------|
| `VmfLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `VmfKWLexer.gi` | Dummy filter (`xxx` → `X`) |
| `VmfParser.g` | LALR parser (`dtParserTemplateF.gi`) |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh vmf
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- Upstream token `QUOTEDSTTRING` renamed to `QUOTEDSTRING`.
- Quoted strings accept control chars (Valve ESC field separators).
- Upstream `atomicvalue+ | listvalue+` narrowed to one value per key (matches examples; avoids LALR absorb of the next block name).
