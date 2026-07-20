# FIX_1 TRUE PORT results

Batch: `tools/_fix_batches.json` → `FIX_1`  
V4 root: `/Users/kuafu/Downloads/grammars-v4-master`  
Bar: `TRUE_PORT_BAR.md` / `FORBIDDEN_SOUP.md` / `REAL_PORT.md`

| id | before_lines | after_lines | harness | notes |
|---|---:|---:|---|---|
| sexpression | 36 | 45 | OK (3) | real g4 sexpr/item/list_/atom + dotted pairs; DOT not bare atom (LALR); quality `language_port` |
| unicode/unicode16 | 55 | 56 (+174 lexer) | OK (8) | g4 parser is 1 NT; honest ASCII/Latin-1 CLASSIFY_* lexer (not fake `abc`); blocker: full BMP table |
| logo/ucb-logo | 67 | 87 | OK (7) | UCBLogo parser-rule port; g4 mostly arity table+lexer; predicates omitted |
| c | 792 | 313 | OK (4) | full antlr2lpg LALR-blocked; curated ISO-C subset parses `int main(){ return 0; }` + locals/if/while |
| javascript/ecmascript | 392 | 392 | OK (4) | kept structural port; real function/object/control examples; full ~9k g4 incomplete |
| swift/swift3 | 314 | 314 | OK (3) | kept structural subset; real func/struct/class/control; full g4 blocker noted |
| swift/swift5 | 314 | 314 | OK (3) | same as swift3 |
| swift/swift2 | 314 | 314 | OK (3) | same as swift3 |
| scala/scala2 | 788 | 232 | OK (4) | full port LALR-blocked; curated object/class/def/if/try/new; lexer Id/StringLiteral fixed |
| python/python | 581 | 581 | OK (5) | kept structural port; INDENT/DEDENT still optional (blocker noted) |

## Status.json

All ten: `quality_notes` include `real_g4_port`; `quality` = `language_port` (sexpression) or `language_subset` (rest); overclaims removed; blockers recorded where full g4 impossible.

## Specials

- **c**: curated examples `main.c` / `locals.c` / `if_while.c` / `decl.c` — not `;`.
- **sexpression**: rules from `sexpression.g4` (not generic token-stream soup comment).
- **unicode/unicode16**: single-codepoint GC examples; lexer carries the port substance.
