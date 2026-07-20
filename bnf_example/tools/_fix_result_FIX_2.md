# FIX_2 TRUE PORT result

Batch: `tools/_fix_batches.json` → **FIX_2**.

## Summary

| id | parser_lines | curated_ex | harness | soup | notes |
|---|---:|---:|---|---|---|
| `javascript/jsx` | 672 | 4 | OK | no | JS curated subset; JSX tags not harness-green yet |
| `codeql` | 684 | 3 | OK | no | from/where/select + predicates |
| `javascript/javascript` | 649 | 5 | OK | no | functions/control/members |
| `agc` | 343 | 3 | OK | no | COMMENT/WS/EOL/LABEL lexer; curated commentary examples |
| `kirikiri-tjs` | 385 | 3 | OK | no | vars/functions/class/while |
| `lpc` | 305 | 3 | OK | no | inherit/functions/class; optional trailing semi fixed |
| `pcre` | 403 | 6 | OK | no | char-level lexer; quant/group/alt/anchor |
| `bison` | 228 | 3 | OK | no | %token/%left + rules; percent_kw lexer |
| `squirrel` | 538 | 4 | OK | no | local/function/class/table/while |
| `tinyos_nesc` | 486 | 3 | OK | no | module/configuration implementation |

## Bar check

- No nested token-stream soup.
- Structural `antlr2lpg` ports + hand-fixed lexers.
- Micro-stubs upgraded: `squirrel` (538L), `tinyos_nesc` (486L).
- Weak examples upgraded: `agc`, `kirikiri-tjs`, `lpc`, `pcre`.

## Verify

```bash
export LPG_BIN=…/lpg-v2.3.0
for id in javascript/jsx codeql javascript/javascript agc kirikiri-tjs lpc pcre bison squirrel tinyos_nesc; do
  bash harness/run-one.sh "$id" || exit 1
done
```
