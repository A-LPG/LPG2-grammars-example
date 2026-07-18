# CLEAR_2 result（清空花架子）

Batch: `tools/_clear_shelf_batches.json` → `CLEAR_2`  
IDs: `iri`, `iso8601`, `smiles`, `r`, `jpa`  
Policy: `tools/SHELF_FIX.md` — no nested token-stream soup.

## Summary

| id | harness | parser_lines | g4≈ | examples | quality |
|---|---|---:|---:|---:|---|
| `iri` | OK | 500 | 614 | 3 | `language_subset` + `real_g4_port` |
| `iso8601` | OK | 415 | 551 | 3 | `language_subset` + `real_g4_port` |
| `smiles` | OK | 349 | 549 | 3 | `language_subset` + `real_g4_port` |
| `r` | OK | 153 | 484† | 3 | `language_subset` + `real_g4_port` |
| `jpa` | OK | 570 | 475 | 3 | `language_subset` + `real_g4_port` |

† R.g4 (~267) + RFilter.g4 (~108); LPG covers R.g4 parser nonterminals with precedence layering.

`bash harness/run-one.sh <id>` → **OK** for all five.

## What changed

### `iri` (WEAK_EX)
- Kept structural antlr2lpg parser (`parse` / `iri` / authority / path / query / fragment).
- Char-level lexer (letters, `D0`–`D9`, `SLASHSLASH`, …) matching parser terminals.
- Curated multi-line IRIs (whitespace-skipped segments): deep path, query, port+path.

### `iso8601` (WEAK_EX)
- Structural parser start fixed to `iso`.
- Digit-per-char lexer + designators `T/Z/W/P/Y/M/D/H/S/R`; `#` comments skipped.
- Curated: split calendar date, basic datetime, begin/end interval.

### `smiles` (WEAK_EX)
- Structural parser; start `smiles_file` → `smiles_list` of molecules.
- Element letter tokens (`UA`…`UZ` / `LA`…`LZ`) + `DIGIT`; hash comments skipped.
- Curated multi-molecule files: aromatics, aliphatics, branched/fused.

### `r` (THIN)
- Precedence-layered structural port of R.g4 (`assign`/`or`/`and`/…/`access`/`primary`).
- Lexer maps `<-`/`->`/… → `ASSIGN`, `[[`/`]]`, `::`, operators; comments → `NL`.
- Curated multi-line programs: assign/call, function+for, if/else+while.
- Honest subset: RFilter NL stripping not fully emulated; residual LALR conflicts.

### `jpa` (WEAK_EX)
- Structural JPA.g4 port; filled empty name/literal stubs with `IDENTIFICATION_VARIABLE` / `NUMBER` / `STRING`.
- Unified path `IDENTIFICATION_VARIABLE DOT qualified_name` (LALR-hostile g4 split).
- Folded-case keywords; identifiers default to `IDENTIFICATION_VARIABLE`.
- Curated multi-line `SELECT`/`DELETE` with `WHERE` numeric comparisons (path compares still LALR-fragile).

## Example evidence (first lines)

### `iri` / `http_deep_path.iri`
```
http://
www.example.org/
path/
to/
resource
```

### `iso8601` / `interval_basic.txt`
```
# ISO 8601 interval begin/end
19850412T232050/
19850625T103000
```

### `smiles` / `aromatics.smi`
```
# aromatic systems
c1ccccc1-c2ccccc2
c1ccccc1
n1c[nH]cc1
```

### `r` / `function_for.R`
```
square <- function(x) {
  x * x
}

for (i in 1:3) {
  print(square(i))
}
```

### `jpa` / `select_where_eq.jpql`
```
SELECT c
FROM Country c
WHERE 1 = 1
```

## Not soup
No `item ::= atom | paren` nested token-stream templates. Parsers retain g4 nonterminal structure (`iri`/`iso`/`smiles`/`prog`/`file_`).
