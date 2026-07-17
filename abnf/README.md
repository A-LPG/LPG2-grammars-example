# ABNF (LPG)

Parse-level port of [antlr/grammars-v4 `abnf/`](https://github.com/antlr/grammars-v4/tree/master/abnf)
(`Abnf.g4`, RFC 5234 / RFC 7405).

## License

BSD (see original `Abnf.g4` header; Rainer Schuster).

## Files

| File | Role |
|------|------|
| `AbnfLexer.gi` | Character lexer (`LexerTemplateF.gi`) |
| `AbnfKWLexer.gi` | Dummy filter (ABNF has no keywords; template requires KWLexer) |
| `AbnfParser.g` | LALR parser (`dtParserTemplateF.gi`), start = `rulelist` |
| `examples/` | `abnf.abnf`, `iri.abnf`, `postal.abnf`, `rfc5322.abnf` |

## Verify

```bash
../harness/run-one.sh abnf
```

## Antlr → LPG notes

- Combined `.g4` split into Lexer + stub KWLexer + Parser.
- ANTLR `ID` → LPG `IDENTIFIER`; `rule_` → `abnf_rule` (nonterminal).
- Hidden `COMMENT` / `WS` → `skipToken()`.
- `NumberValue` / `ProseValue` / `%s`/`%i` strings kept as lexer tokens.
- `repeat_` forms: `INT`, `*`, `INT*`, `*INT`, `INT*INT`.
- `=/` incremental definition: `IDENTIFIER EQUAL SLASH elements`.
