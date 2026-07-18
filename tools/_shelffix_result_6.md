# SHELFFIX_6 result

Batch IDs: `argus`, `powerbuilderdw`, `orwell`, `lucene`, `matlab`, `gtin`, `morsecode`

## Summary

| id | quality | examples | harness | notes |
|----|---------|----------|---------|-------|
| argus | language_subset | 4 | OK* | Structural g4 port; `tag`/`wtag` → `TAG`/`WTAG`; left-factored `file_`; `automatic_ast=none`. *`run-one` can race on `out-java` under parallel agents; verified via private out dir. |
| powerbuilderdw | language_subset | 3 | OK | Subset of DW header/`DATAWINDOW`/`TABLE`/`COLUMN`; FoldedCase KW; removed false `DATAWINDOW` keyword; DQUOTED_STRING lexer. |
| orwell | language_subset | 4 | OK | `syndecl` + `def_` subset matching v4 examples (`Num == Int`, `power x n = 1`). |
| lucene | language_subset | 5 | OK | DEFAULT-mode query port: boolean/field/quoted/fuzzy; `OP_COLON` + AND/OR/NOT. |
| matlab | language_subset | 4 | OK | Statement/expression port; CR/`SEMI` eostmt; assign/array/string/if. |
| gtin | language_port | 7 | OK | Named g4 forms (or length spine + hyphen skip); UPC/EAN/GTIN-14/supplemental curated. |
| morsecode | language_port | 5 | OK | Full small g4 (`letter` / DOT/DASH/SPACE); SOS/SMS/HELLO/CQ/HELP. |

## Evidence

```text
bash harness/run-one.sh gtin|morsecode|lucene|matlab|powerbuilderdw|orwell  → OK
argus: private out_directory generate + ParseDriver → 4/4 PARSE OK
```

## Forbidden checks

- No `item ::= atom` token-stream soup retained.
- Smoke-only start rules (`RELEASE NUMBER SEMI` alone, bare `IDENTIFIER`, `Int == Bool` shortcut) removed where present.
- Examples are real language snippets (≥3 each), not `;` / single-token toys.

## Upstream

Compared under `/Users/kuafu/Downloads/grammars-v4-master/{argus,powerbuilderdw,orwell,lucene,matlab,gtin,morsecode}/`.
