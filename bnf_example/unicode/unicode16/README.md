# unicode/unicode16

Subset port of grammars-v4 `unicode/unicode16/classify.g4`.
Parser: `file_` / `codepoint` GC tokens. Lexer: ASCII general-category slice
(not the full ~3k-line BMP table).

```bash
bash ../harness/run-one.sh unicode/unicode16
```
