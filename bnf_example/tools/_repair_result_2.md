# REPAIR_2 result

Exclusive IDs: `redis`, `iri`, `iso8601`, `smiles`, `jpa`

## Summary table

| id | harness | curated count | quality | what fixed |
|----|---------|---------------|---------|------------|
| redis | **OK** | 3 | `language_subset` + `real_g4_port` | Dummy KW → FoldedCase KW (180 cmds); lexer `checkForKeyWord` + `NEWLINE` / decimal tokens |
| iri | **OK** | 3 | `language_subset` + `real_g4_port` | Replaced char-soup mismatch; token-level `iri`/`ihier_part`/`iauthority`/`iquery` subset; WS skipped |
| iso8601 | **OK** | 3 | `language_subset` + `real_g4_port` | Digit-per-token lexer + T KW; calendar/datetime/interval subset; `#` comments + multi-value file |
| smiles | **OK** | 3 | `language_subset` + `real_g4_port` | Letter-per-token lexer (UA/UC/LC…); organic/aromatic/branch/ring subset; `# comment` skip |
| jpa | **OK** | 6 | `language_subset` + `real_g4_port` | Removed terminal-LHS `boolean_literal`; SELECT/FROM/WHERE + DELETE subset; real IDENTIFIER names |

## Harness evidence (tails)

```
=== redis ===
PARSE OK: hash_ops.txt
PARSE OK: list_keys.txt
PARSE OK: string_ops.txt
OK: redis (3 examples)

=== iri ===
PARSE OK: http_deep_path.iri
PARSE OK: http_port_path.iri
PARSE OK: https_query.iri
OK: iri (3 examples)

=== iso8601 ===
PARSE OK: calendar_extended.txt
PARSE OK: datetime_basic.txt
PARSE OK: interval_basic.txt
OK: iso8601 (3 examples)

=== smiles ===
PARSE OK: aliphatics.smi
PARSE OK: aromatics.smi
PARSE OK: branched.smi
OK: smiles (3 examples)

=== jpa ===
PARSE OK: delete_equals.jpql
PARSE OK: delete_where_eq.jpql
PARSE OK: select_equals.jpql
PARSE OK: select_greater.jpql
PARSE OK: select_where_eq.jpql
PARSE OK: select_where_gt.jpql
OK: jpa (6 examples)
```

## Diagnosis (root causes)

1. **redis** — `RedisKWLexer` was a dummy (`xxx`→X); lexer used `makeToken(IDENTIFIER)` and skipped newlines, so `HSET`/`LPUSH` never became command keywords and `NEWLINE` never separated commands.
2. **iri** — Parser expected char tokens (`A`/`D0`/…); lexer emitted `IDENTIFIER` for `http`.
3. **iso8601** — Parser expected `Digit`; lexer emitted `NUMBER`; multi-line dates broken.
4. **smiles** — Parser expected `UC`/`LC`/…; lexer emitted `IDENTIFIER` for `CCO`.
5. **jpa** — KW exported `boolean_literal` used as parser LHS (“Terminal symbol used as left hand side”); g4 empty stubs for schema/fields left names unparseable.

## Notes

- Prefer g4-shaped subsets over full conflict-heavy char ports where LALR would not close.
- `status.json` for each ID: `quality: language_subset` with `real_g4_port` in `quality_notes`.
