# 花架子 → 真移植

List: `tools/SHELF_LIST.md` / `tools/_shelffix_batches.json`

## Reference (done)

`json` — mirrors grammars-v4 `JSON.g4` (`json`/`obj`/`pair`/`arr`/`value`), STRING escapes + NUMBER, curated empty/escapes/mixed array. Tiny g4 ⇒ short parser is OK if structure matches.

## Must

1. Compare to `/Users/kuafu/Downloads/grammars-v4-master/<id>/*.g4`
2. Parser nonterminals from g4 (not `item ::= atom` soup)
3. Lexer matches language tokens (not leftover generic IDENTIFIER soup unless KW path needs it)
4. ≥3 multi-line real examples (prefer v4 examples + curated)
5. `bash harness/run-one.sh <id>` OK
6. `status.json`: honest `language_port` only if essentially full small g4; else `language_subset` + `real_g4_port`

## Forbidden

- Nested token-stream soup
- Claiming done with `;` / single-token examples
- Inflating line count without g4 structure
