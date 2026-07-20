# SHELFFIX_3 result

Batch: `smalltalk`, `xsd-regex`, `wln`, `metric`, `ltl`, `robotwars`, `pl0`, `logo/logo`  
Policy: `tools/SHELF_FIX.md`. Compared to `/Users/kuafu/Downloads/grammars-v4-master/<id>/*.g4`. No token-stream soup.

## Summary

| id | parser_lines | examples | harness | quality | notes |
|---|---:|---:|---|---|---|
| `smalltalk` | 163 | 3 | OK | `language_subset` | real lexer + g4 NTs; NUMBER/ws adaptations; LALR conflicts remain |
| `xsd-regex` | 107 | 4 | OK | `language_subset` | mirrors `regexParser.g4`; mode-free lexer subset |
| `wln` | 31 | 3 | OK | `language_port` | full small `wln.g4` (`wln`/`group`/`symbol`) |
| `metric` | 44 | 5 | OK | `language_subset` | g4 UOM shape; ohm for Ω; no µ/˚C |
| `ltl` | 30 | 5 | OK | `language_subset` | g4 proposition; ASCII `->`/`&&`/`\|\|`/`~` for unicode ops |
| `robotwars` | 76 | 9 | OK | `language_subset` | g4 statement/regs NTs; expression LALR-layered |
| `pl0` | 69 | 3 | OK | `language_port` | full small `pl0.g4` stmt NTs (`assignstmt`/`callstmt`/…) |
| `logo/logo` | 106 | 16 | OK | `language_port` | full small `logo.g4` cmd NTs (`fd`/`repeat_`/`ife`/…) |

## Method

1. Compared each unit to grammars-v4 `.g4`; rewrote shelf/generic lexers where needed (esp. Smalltalk).
2. Parser nonterminals follow g4 names (not `item`/`atom` soup).
3. Added/replaced `examples-curated/` (or kept rich v4 `examples/`) with ≥3 multi-line samples.
4. `bash harness/run-one.sh <id>` OK for all eight (`LPG_BIN=lpg-v2.3.0`).
5. `status.json`: honest `language_port` only for essentially complete small g4s; else `language_subset` + `real_g4_port`.

## Per-id

### smalltalk
- Rewrote `SmalltalkLexer.gi` for g4 vocabulary (`ASSIGNMENT`, `KEYWORD`, `BLOCK_PARAM`, …).
- Hand port of `script`/`sequence`/`temps`/`cascade`/`keywordSend`/…; block args use Amber `[:x \| body]`.
- Curated: `temps_assign.st`, `cascade_keyword.st`, `block_return.st`.

### xsd-regex
- Kept structural `root`/`regExp`/`branch`/`piece`/`charClass` port; curated multi-line quant/class/group samples (+ v4 quantity).

### wln / metric / ltl
- Micro-languages: g4-shaped parsers; multi-group / multi-line UOM / multi-line formulas.

### robotwars / pl0 / logo/logo
- Expanded named nonterminals to match g4 (fix PORT_OVERCLAIM).
- Examples: v4 robot programs; PL/0 square/primes/math; Logo flower/fractal/procs.

## Verify

```bash
export LPG_BIN=…/lpg2/build/lpg-v2.3.0
for id in smalltalk xsd-regex wln metric ltl robotwars pl0 logo/logo; do
  bash harness/run-one.sh "$id" || exit 1
done
```
