# Newick (LPG)

Parse-level port of [antlr/grammars-v4 `newick`](https://github.com/antlr/grammars-v4/tree/master/newick).

## License

BSD (see original `.g4` header).

## Files

| File | Role |
|------|------|
| `NewickLexer.gi` | Character lexer |
| `NewickKWLexer.gi` | Dummy KW filter |
| `NewickParser.g` | LALR parser |
| `examples/` | Copied from grammars-v4 |

## Verify

```bash
../harness/run-one.sh newick
```

## Antlr → LPG notes

- Optional `name` / `length` → `$empty` alternatives.
- Left-factored to `tree_ ::= subtree length SEMI` so LALR accepts length on the root (example5).
