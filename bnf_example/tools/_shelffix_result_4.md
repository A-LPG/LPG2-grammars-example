# SHELFFIX_4 result

Batch: `edn`, `abnf`, `d2`, `arithmetic`, `gff3`, `datalog`, `tinyc`, `microc`.

Policy: `tools/SHELF_FIX.md` — no soup, g4 nonterminals, ≥3 multiline real samples, honest quality.

## Summary

| id | harness | g4 lines | LPG parser lines | quality | notes |
|---|---|---|---|---|---|
| `edn` | OK (3) | 221 | 66 | `language_port` + `real_g4_port` | value/list_/vector/map_/set_/tag/keyword; curated deps+serializability+config |
| `abnf` | OK (3) | 162 | 64 | `language_port` + `real_g4_port` | rulelist/alternation/repetition; core+postal+datetime |
| `d2` | OK (3) | 158 | 73 | `language_subset` + `real_g4_port` | tiny D2.g4 only (not full D2 lang); service/cloud/sql diagrams |
| `arithmetic` | OK (4) | 157 | 61 | `language_port` + `real_g4_port` | layered precedence; scientific/variable; multi-equation files |
| `gff3` | OK (3) | 135 | 52 | `language_subset` + `real_g4_port` | HEADER folded into COMMENTLINE (LPG prefix-safe); gene/operon/stem_loop |
| `datalog` | OK (3) | 133 | 67 | `language_port` + `real_g4_port` | assertion/retraction/query/clause; paths/socrates/genealogy |
| `tinyc` | OK (4) | 115 | 58 | `language_port` + `real_g4_port` | id_/integer; multiline double/gcd/do-while/nested-if |
| `microc` | OK (3) | 109 | 61 | `language_port` + `real_g4_port` | if/while/block + id_/integer; multiline double/gcd/branch |

All eight: **no token-stream soup**. Harness pointed at `examples-curated/`.

## Method

1. Compared each unit to `/Users/kuafu/Downloads/grammars-v4-master/<id>/*.g4`.
2. Kept/aligned g4-shaped nonterminals (not `item ::= atom` soup); tinyc/microc gained `id_`/`integer`; arithmetic gained `scientific`/`variable`.
3. Added ≥3 multiline real curated samples (emphasis: tinyc/microc/arithmetic/edn).
4. `bash harness/run-one.sh <id>` → all OK.
5. Honest `status.json`: full small-g4 ports → `language_port`; gff3 HEADER fold + d2 tiny-subset → `language_subset`; all carry `real_g4_port`.

---

## tinyc (priority)

**Harness:** `OK: tinyc (4 examples)`

**Parser shape:** `program` / `statement` (if/else/while/do-while/block) / `expr` / `test` / `sum_` / `term` / `id_` / `integer`. Lexer STRING≈`[a-z]+`.

### Example evidence

`examples-curated/euclidean_gcd.tc`:

```
{
  i = 125;
  j = 100;
  while (i - j)
    if (i < j)
      j = j - i;
    else
      i = i - j;
}
```

`examples-curated/do_while_step.tc`:

```
{
  i = 1;
  do
    i = i + 10;
  while (i < 50);
}
```

---

## microc (priority)

**Harness:** `OK: microc (3 examples)`

**Parser shape:** g4 `ifstatement` / `whilestatement` / `blockstatement` / `exprstatement` + `id_` / `integer` (no do-while; matches microc.g4).

### Example evidence

`examples-curated/branch_assign.mc`:

```
{
  i = 7;
  if (i < 5)
    x = 1;
  else
    x = 0;
  if (i < 10)
    y = 2;
}
```

---

## arithmetic (priority)

**Harness:** `OK: arithmetic (4 examples)`

**Parser shape:** `file_` / `equation` / layered `expression`→`term`→`factor`→`power`→`atom` / `scientific` / `variable` / `relop`.

### Example evidence

`examples-curated/quadratic.txt`:

```
x = (-b + (b * b - 4 * a * c) ^ 0.5) / (2 * a)
y = (-b - (b * b - 4 * a * c) ^ 0.5) / (2 * a)
disc = b * b - 4 * a * c
```

---

## edn (priority)

**Harness:** `OK: edn (3 examples)`

**Parser shape:** `program` / `value` / `tag` / `keyword` / `list_` / `vector` / `map_` / `set_`; lexer Symbol→IDENTIFIER.

### Example evidence

`examples-curated/project_deps.edn` — deps.edn-style nested maps/aliases.

`examples-curated/serializability.edn` — keywords, bigints, tagged values, set/map/list.

`examples-curated/config_tree.edn` — nested app/db/workers config.

---

## abnf

**Harness:** `OK: abnf (3 examples)` — core RFC rules, postal-address ABNF, date-time fragment.

---

## d2

**Harness:** `OK: d2 (3 examples)` — edges, nested cloud block, sql_table board. Marked `language_subset` (upstream g4 is a tiny D2 subset).

---

## gff3

**Harness:** `OK: gff3 (3 examples)` — tiny gene, operon, stem_loop. `HEADER` not a separate lexer token (would steal `##…` prefixes in LPG); document still requires leading COMMENTLINE + line+.

---

## datalog

**Harness:** `OK: datalog (3 examples)` — graph paths, Socrates syllogism, genealogy with retraction.
