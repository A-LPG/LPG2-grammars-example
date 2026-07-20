# TL (LPG)

Parse-level port of [antlr/grammars-v4 `tl/`](https://github.com/antlr/grammars-v4/tree/master/tl) (Prior's tense logic).

## License

BSD (see original `tl.g4` header).

## Verify

```bash
../harness/run-one.sh tl
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- Unicode operators `∨` / `⊥` / `⌐` are recognized via `AfterASCII` classification.
- Examples use ASCII stand-ins `|` / `#` / `~` because Java `LexStream` sizes its buffer by file byte length, which leaves NUL padding after UTF-8 multi-byte characters.

