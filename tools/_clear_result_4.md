# CLEAR_4 result

Batch: `tools/_clear_shelf_batches.json` → `CLEAR_4`
Policy: `tools/SHELF_FIX.md` — no soup, ≥3 multi-line curated examples, honest `language_subset` + `real_g4_port`.

## Summary

| id | harness | LPG parser lines | examples | quality | notes |
|---|---|---:|---:|---|---|
| `rego` | OK (3) | 155 | 3 | `language_subset` | real_g4_port; KW `IDENTIFIER`+`Name`; package/import/rules bodies |
| `xpath/xpath1` | OK (3) | 131 | 3 | `language_subset` | real_g4_port; `main ::= expr` (no IDENTIFIER/DOT soup); path/predicate/func |
| `smalltalk` | OK (3) | 163 | 3 | `language_subset` | real_g4_port; temps/assign/cascade/block; NUMBER not DIGIT soup |
| `lucene` | OK (5) | 83 | 5 | `language_subset` | real_g4_port; no topLevelQuery soup; multi-line boolean/field/fuzzy/boost |
| `matlab` | OK (4) | 149 | 4 | `language_subset` | real_g4_port; `file_ ::= statement_list`; assign/array/if/string |

## Method

1. Removed token-stream / start-symbol soup shortcuts (`IDENTIFIER`/`DOT`/`translation_unit_smoke` smokes).
2. Rego: export `IDENTIFIER` for KW filter + `checkForKeyWord($_Name)`.
3. Replaced TRIVIAL_EX / WEAK_EX curated samples with multi-line real language snippets (v4-shaped).
4. `bash harness/run-one.sh` OK on all five; `status.json` → `language_subset` + `real_g4_port`.

---

## `rego`

**Harness:** `OK: rego (3 examples)`
**Parser lines:** 155
**quality:** `language_subset`

### Example evidence

`examples-curated/default_rule.rego`:

```
package policy

default allow = false

allow = true {
    input.role == "admin"
}
```

`examples-curated/package_import.rego`:

```
package example.authz

import data.users
import input.request as req
```

`examples-curated/rules_body.rego`:

```
package app

allow = true {
    input.user == "alice"
    input.action == "read"
}
```

---

## `xpath/xpath1`

**Harness:** `OK: xpath/xpath1 (3 examples)`
**Parser lines:** 131
**quality:** `language_subset`

### Example evidence

`examples-curated/path.xpath`:

```
/bookstore
  /book
  /title
```

`examples-curated/predicate.xpath`:

```
/bookstore/book[
  @category
]
```

`examples-curated/axes_func.xpath`:

```
count(
  //book[@category]
)
```

---

## `smalltalk`

**Harness:** `OK: smalltalk (3 examples)`
**Parser lines:** 163
**quality:** `language_subset`

### Example evidence

`examples-curated/temps_assign.st`:

```
| x y |
x := 1.
y := x + 2.
^ y
```

`examples-curated/cascade_keyword.st`:

```
| coll |
coll := OrderedCollection new.
coll add: 1; add: 2; add: 3.
^ coll
```

`examples-curated/block_return.st`:

```
| f |
f := [:x | x + 1].
^ f value: 41
```

---

## `lucene`

**Harness:** `OK: lucene (5 examples)`
**Parser lines:** 83
**quality:** `language_subset`

### Example evidence

`examples-curated/boolean_and.txt`:

```
title:hello
  AND
  jakarta
```

`examples-curated/boolean_or_group.txt`:

```
(
  title:foo
  OR
  title:bar
)
AND
text:baz
```

`examples-curated/quoted_boost.txt`:

```
"jakarta apache"
  OR
  lucene^2
```

---

## `matlab`

**Harness:** `OK: matlab (4 examples)`
**Parser lines:** 149
**quality:** `language_subset`

### Example evidence

`examples-curated/assign_const.m`:

```
x = 17;
y = x + 3;
```

`examples-curated/array_expr.m`:

```
x = [3*4, pi/2];
z = x;
```

`examples-curated/if_assign.m`:

```
if x > 0
  y = 1;
else
  y = 0;
end
```

`examples-curated/string_lit.m`:

```
a = 'hello';
b = a;
```
