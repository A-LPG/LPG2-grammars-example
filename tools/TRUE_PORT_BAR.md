# True port bar（真移植，不是花架子）

## Must

1. **No soup**: never `nested token stream` / `item ::= atom | paren`.
2. **From g4**: `python3 tools/antlr2lpg.py <id>` (use `--include-huge` if needed), then hand-fix lexer.
3. **Size**: if upstream g4 ≥ 500 lines, LPG parser should usually be **≥ 300 lines** (or ≥ ~15% of g4 for huge dialects). Sub-100-line “curated” clones are SHELF.
4. **Examples must exercise the language**: functions/classes/statements of that language — **not** only `;` / empty / `a b c`.
5. **Harness**: `bash harness/run-one.sh <id>` → OK on those real-ish curated examples.
6. **Honest status**: `language_port` or `language_subset` + `real_g4_port`. If examples are still weak, say so in notes — do not claim full language.

## Forbidden

- Keeping a 20–130 line stub and marking `parse_ok` / `real_g4_port`
- Writing the 57-line nested token-stream template
- “Fixing” harness by deleting all real examples down to `;`

## Reference good ports

- `java/java`, `java/java20`, `python/python3`, `rust`, `javascript/typescript`
