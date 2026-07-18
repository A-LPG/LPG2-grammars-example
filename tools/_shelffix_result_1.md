# SHELFFIX_1 results — 花架子 → 真移植

Batch: `tools/_shelffix_batches.json` → `SHELFFIX_1`  
Bar: `tools/SHELF_FIX.md` / `tools/TRUE_PORT_BAR.md`  
V4 root: `/Users/kuafu/Downloads/grammars-v4-master`

## Summary

| id | g4 | lpg lines | soup? | harness | quality |
|----|---:|----------:|:-----:|---------|---------|
| `json` | 78 | 48 | no | **OK (5)** | `language_port` + `real_g4_port` (reference; verified) |
| `json5` | 153 | 71 | no | **OK (11)** | `language_port` + `real_g4_port` |
| `csv` | 58 | 38 | no | **OK (8)** | `language_port` + `real_g4_port` |
| `tsv` | 72 | 38 | no | **OK (6)** | `language_port` + `real_g4_port` |
| `stringtemplate` | 101† | 103 | no | **OK (4)** | `language_subset` + `real_g4_port` |
| `unicode/unicode16` | 3099‡ | 60 | no | **OK (5)** | `language_subset` + `real_g4_port` |
| `logo/ucb-logo` | 877§ | 87 | no | **OK (4)** | `language_subset` + `real_g4_port` |
| `romannumerals` | 188 | 67 | no | **OK (6)** | `language_port` + `real_g4_port` |

† STGParser.g4 only (~101); shelf “1421” summed LexBasic/LexUnicode/ST*.  
‡ classify.g4 is almost all lexer BMP ranges; parser is intentionally tiny.  
§ UCBLogo.g4 is mostly `@parser::members` arity table + lexer; parser rules ~90 lines.

All: `bash harness/run-one.sh <id>` → OK. No nested token-stream soup.

## Per-id evidence

### json (reference — verify only)
- Parser mirrors `JSON.g4`: `json` / `obj` / `pair` / `arr` / `value`.
- Lexer: `STRING` escapes + `NUMBER`; keywords via filter for `true`/`false`/`null`.
- Examples: `example1.json`, `numbers.json`, curated `empty` / `escapes` / `array_mixed`.
- Harness: **OK (5)**. Status already honest `language_port` + `real_g4_port`.

### json5
- Parser mirrors `JSON5.g4`: `json5` / `obj` / `pair` / `key` / `value` / `arr` / `number` + trailing commas.
- Lexer: `//` `/* */`, single/double strings, escapes, hex, `Infinity`/`NaN`, unquoted keys (`$`/`_`).
- Examples: upstream kitchen-sink set + curated `empty` / `escapes` / `array_mixed` / `nested` / `simple`.
- Harness: **OK (11)**.

### csv
- Parser mirrors `CSV.g4`: `csvFile` / `hdr` / `row` / `field` (empty field alt).
- Lexer: `TEXT` / `STRING` (`""` escape) / `COMMA` / `NL` (not IDENTIFIER soup).
- Curated multi-row: empty fields, quoted escapes, mixed rows (+ upstream `example1.csv`).
- Harness: **OK (8)**.

### tsv
- Parser mirrors `tsv.g4`: `tsvFile` / `hdr` / `row` / `field` (no empty-field alt).
- Lexer: `TEXT` / `STRING` / `TAB` / `EOL`.
- Curated: people / quoted / xy / simple (+ upstream `example1.txt`).
- Harness: **OK (6)**.

### stringtemplate
- Rewrote opaque `optn0001` soup names → g4 names: `group` / `delimiters` / `imports` / `template_` / `formalArgs` / `dict_` / `keyValue`…
- Lexer grown: `BIGSTRING` (`<<…>>`), `BIGSTRING_NO_NL` (`<%…%>`), `ANON_TEMPLATE` (`{…}`); `true`/`false` keywords.
- Curated STG: hello, formals+alias, dict+bigstring, import+delimiters.
- Honest subset: STG group only — blocker notes `STParser` template-body not ported.
- Harness: **OK (4)**.

### unicode/unicode16
- Parser from `classify.g4`: `file_` / `codepoint` → all `CLASSIFY_*` alts.
- Lexer substance: ASCII GC slice (Lu/Ll/Nd/Zs/Cc/Pc/Pd/Ps/Pe/Po/Sm/Sc/Sk) + AfterASCII→Lo catch-all.
- Blocker: full ~3k-line BMP table not ported.
- Curated texts exercise letters/digits/punct/math/controls/ws.
- Harness: **OK (5)**. Quality `language_subset` (stripped any full-Unicode overclaim).

### logo/ucb-logo
- Parser from `UCBLogo.g4` rules: `parse` / `instruction` / `procedure_def` / `macro_def` / layered `expression` / `list_` / `array_`.
- Lexer: `VARIABLE` / `QUOTED_WORD` / comments / `LBRACE`/`RBRACE` for arrays.
- Blocker: arity `Map` + semantic predicates omitted (LALR conflicts remain; curated still parse).
- Curated: house/tree procs, spiral, array+paren-call.
- Harness: **OK (4)**. Quality `language_subset` + `real_g4_port`.

### romannumerals
- Full structural port of `romannumerals.g4` thousands→ones (subtractive `CM`/`CD`/`XC`/`XL`/`IX`/`IV`).
- Examples cover year / large / subtractive / maxish / ones / simple (numeral-per-file is natural for this g4).
- Harness: **OK (6)**. `language_port` justified (complete small g4).

## Forbidden checks
- No `item ::= atom | paren` nested token-stream soup in any batch parser.
- No harness “fixed” by deleting real examples down to `;`.
- Overclaim stripped where g4 is huge (stringtemplate ST body, unicode BMP, logo arity table).
