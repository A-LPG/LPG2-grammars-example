# Calculator (LPG) (EBNF)

Parse-level port of [antlr/grammars-v4 `calculator/`](https://github.com/antlr/grammars-v4/tree/master/calculator).

## License

BSD (see original `calculator.g4` header).

## Files

| File | Role |
|------|------|
| `CalculatorLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `CalculatorKWLexer.gi` | Function names + `pi` / `e` / `i` keywords |
| `CalculatorParser.g` | LALR parser (`dtParserTemplateF.gi`), start = `equation` |
| `examples/` | Copied `.txt` inputs from grammars-v4 (no `*.tree`) |

## Verify

```bash
../harness/run-one.sh calculator
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + KWLexer + Parser.
- Start rule `equation`: `expression relop expression` (EOF via `%Eof`).
- `-> skip` → `skipToken()`.
- Function names and constants (`cos`…`sqrt`, `pi`, `e`, `i`) are keyword-filter tokens on identifiers only.
- `SCIENTIFIC_NUMBER` owns `E`/`e` exponents (`12e17`, `15E12.3`); keyword `e` never steals the exponent letter.
- List `(COMMA expression)*` → left-recursive `arg_list`.
- `automatic_ast=nested`, `import_terminals` from lexer.


Classic-BNF twin: [`../../bnf_example/calculator/`](../../bnf_example/calculator/).
