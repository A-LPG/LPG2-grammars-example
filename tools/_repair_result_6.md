# REPAIR_6 result (stand-in for missing CLEAR_3)

IDs: `argus`, `turtle-doc`, `powerbuilderdw`, `orwell`

Policy: `tools/REPAIR.md` + `tools/SHELF_FIX.md` — compare g4, non-soup NTs, language lexer, ≥3 multi-line curated examples, `bash harness/run-one.sh <id>` → OK, `status.json`: `language_subset` + `real_g4_port`.

## Summary

| id | harness | curated | parser lines | quality | what fixed |
|----|---------|---------|--------------|---------|------------|
| `argus` | **OK (4)** | 4 multi-line | 937 | `language_subset` + `real_g4_port` | Verified structural `file_`/`procedure`/`iterator`/`equates_` port; harness OK when no parallel `out-java` race |
| `turtle-doc` | **OK (3)** | 3 multi-line | 105 | `language_subset` + `real_g4_port` | g4 NTs `turtleDoc`/`statement`/`triples`/…; `iri` allows `LetterA` local; curated blank+collection+`a` predicate |
| `powerbuilderdw` | **OK (3)** | 3 multi-line | 81 | `language_subset` + `real_g4_port` | g4-shaped `start_rule`/`header_rule`/`datawindow_property`/`COLUMN`; folded-case KW lexer; curated RELEASE/DW/COLUMN |
| `orwell` | **OK (4)** | 4 multi-line (was ml=0) | 78 | `language_subset` + `real_g4_port` | `program`/`syndecl`/`def_`/`pat`/`rhs`/`term`/`appexpr`; multi-line curated; note LALR limit on adjacent `def_`s |

All: `bash harness/run-one.sh <id>` → `OK: <id>` (final pass logs: `/tmp/repair6_final_<id>.log`).

## Harness tails (final)

```
OK: orwell (4 examples)
OK: turtle-doc (3 examples)
OK: powerbuilderdw (3 examples)
OK: argus (4 examples)
```

```
PARSE OK: identity.or / list_def.or / power.or / synonym.or
PARSE OK: blank_collection.ttl / literals.ttl / prefix_triple.ttl
PARSE OK: header_detail.srd / release_dw.srd / table_column.srd
PARSE OK: equates_mod.argus / iter_empty.argus / proc_empty.argus / proc_returns.argus
```

## Per-id notes

### argus
- **g4**: `argus.g4` — `file_` / `module` / `equates_` / `procedure` / `iterator` / …
- **LPG**: left-factored `file_` start (avoids equate* prefix committing to wrong alt); keyword lexer; not token-stream soup.
- **Examples**: empty `proc`/`iter`, `returns (int)`, multi-line `equates` module.
- **Ops note**: parallel agents racing `argus/out-java` caused intermittent `Cannot publish … ArgusParser.java`; clean solo harness is green.

### turtle-doc
- **g4**: `turtle.g4` — full small document grammar (subset of lexer escapes/long strings).
- **LPG**: structural NTs; PName split as `IDENTIFIER COLON (IDENTIFIER|LetterA)?`; blank `[]` / `_:label`; collections `(…)`.
- **Examples**: blank+collection triples; string/number/bool literals; `@prefix` + `a` type predicate.

### powerbuilderdw
- **g4**: `PowerBuilderDWParser.g4` — `start_rule` / `header_rule` / `datawindow_property` / `TABLE` / `COLUMN`.
- **LPG**: subset covering RELEASE header + DATAWINDOW/HEADER/DETAIL/COLUMN attribute lists; typed KW lexer.
- **Examples**: RELEASE+DATAWINDOW+HEADER+DETAIL; empty DATAWINDOW; COLUMN name attr.

### orwell
- **g4**: `orwell.g4` — `program` / `decl` / `syndecl` / `def_` / `pat` / `rhs` / `term` (large type/op surface not fully ported).
- **LPG**: syndecl + def subset with pat application + list atoms + infix/prefix terms.
- **Examples**: multi-line (comment + body) identity/power/list; synonym `Num == Int` then `zero = 0`.
- **Honest limit**: skipped-WS + application makes adjacent pure `def_` decls LALR-ambiguous; curated files use one `def_` or `syndecl` then `def_`.

## status.json

Each id: `"quality": "language_subset"` with `"real_g4_port"` in `quality_notes`, `parse_ok: true`, `status: "ported"`.
