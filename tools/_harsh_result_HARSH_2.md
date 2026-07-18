# HARSH_2 result

Batch: `tools/_harsh_fix_batches.json` → `HARSH_2`
Policy: `tools/HARSH_FIX.md` + `tools/TRUE_PORT_BAR.md` — no soup, real curated examples, honest `language_subset`.

## Summary

| id | harness | LPG parser lines | examples | quality | notes |
|---|---|---:|---:|---|---|
| `javascript/ecmascript` | OK (4) | 392 | 4 | `language_subset` | real_g4_port, antlr2lpg_structural_port, curated_examples_multiline_functions_objects_control |
| `xsd-regex` | OK (3) | 107 | 3 | `language_subset` | real_g4_port, character_lexer_not_soup, curated_quant_group_class_examples |
| `morsecode` | OK (3) | 59 | 3 | `language_subset` | real_g4_port, full_letter_table_from_g4, curated_sos_sms_hello |
| `joss` | OK (3) | 244 | 3 | `language_subset` | real_g4_port, antlr2lpg_structural_port, curated_type_set_go_page_line_cancel |
| `cpp` | OK (5) | 1223 | 5 | `language_subset` | real_g4_port, parses_real_functions_and_empty_classes, curated_funcs_control_class_vars_namespace |
| `atl` | OK (5) | 532 | 5 | `language_subset` | real_g4_port, antlr2lpg_structural_port, curated_module_library_query_helpers |
| `argus` | OK (4) | 775 | 4 | `language_subset` | real_g4_port, antlr2lpg_structural_port, curated_proc_iter_equates |
| `python/python2-js` | OK (3) | 632 | 3 | `language_subset` | real_g4_port, antlr2lpg_structural_port, curated_assign_print_def_if_pass |
| `pcre` | OK (3) | 403 | 3 | `language_subset` | real_g4_port, antlr2lpg_structural_port, curated_alt_quant_anchor_examples |
| `lpc` | OK (3) | 305 | 3 | `language_subset` | real_g4_port, antlr2lpg_structural_port, empty_argument_and_optional_semi_fixed |

## Method

1. Fixed KW/parser LHS collisions (`goCMD`/`tag_kind`/`pass_stmt` exported as terminals).
2. **cpp**: `simpleDeclaration` accepts `classSpecifier`; curated real functions + empty classes + if/while (no `<` template trap).
3. **xsd-regex**: character lexer (`REGEXCHAR`) replacing generic IDENTIFIER soup lexer.
4. **argus**: left-factored `%Start` so `proc`/`iter`/`equates` are not stolen by `equates_` path.
5. **python/python2-js**: `SpaceSpace`→`whiteSpace`; start=`file_input`; KW `BREAK`/`CONTINUE`/`PASS`.
6. **lpc**: empty `argument` + optional `possible_semi_colon`.
7. Replaced trivial/weak `examples-curated`; `bash harness/run-one.sh` OK on all ten.

---

## `javascript/ecmascript`

**Harness:** `OK: javascript/ecmascript (4 examples)`
**Parser lines:** 392
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/calls.js`:

```
function add(a, b) {
    return a + b;
}
var z = add(1, 2);
```

`examples-curated/if_return.js`:

```
function g(a) {
    if (a) {
        return a;
    }
    return 0;
```

`examples-curated/object.js`:

```
var o = {
    a: 1,
    b: 2
};
var x = o.a;
```

`examples-curated/smoke.js`:

```
var x = 1;
function f() {
    return x;
}
```

---

## `xsd-regex`

**Harness:** `OK: xsd-regex (3 examples)`
**Parser lines:** 107
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/class_range.txt`:

```
[a-z]+
```

`examples-curated/group_or.txt`:

```
(ab)|c+
```

`examples-curated/quant_alt.txt`:

```
a+b*
```

---

## `morsecode`

**Harness:** `OK: morsecode (3 examples)`
**Parser lines:** 59
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/HELLO.txt`:

```
.... . .-.. .-.. ---
```

`examples-curated/SMS.txt`:

```
... -- ...
```

`examples-curated/SOS.txt`:

```
... --- ...
```

---

## `joss`

**Harness:** `OK: joss (3 examples)`
**Parser lines:** 244
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/demand_stop.joss`:

```
cancel.
delete all.
go.
```

`examples-curated/page_line.joss`:

```
page.
line.
go.
```

`examples-curated/type_set_go.joss`:

```
type x.
set a = b.
go.
```

---

## `cpp`

**Harness:** `OK: cpp (5 examples)`
**Parser lines:** 1223
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/class_empty.cpp`:

```
class Foo {
};

class Bar {
};
```

`examples-curated/control.cpp`:

```
int abs_val(int n) {
    if (n) {
        return n;
    }
    while (n) {
```

`examples-curated/funcs.cpp`:

```
void f() {}

int g() {
    return 1;
}
```

`examples-curated/tiny.cpp`:

```
namespace N {
    int x;
}

using X = int;
```

`examples-curated/vars.cpp`:

```
int x;
int y = 1;
int *p;
int a, b;
Foo z;
```

---

## `atl`

**Harness:** `OK: atl (5 examples)`
**Parser lines:** 532
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/library_helper.atl`:

```
library Helpers;
helper def : foo() : integer = 1;
```

`examples-curated/library_only.atl`:

```
library Helpers;
```

`examples-curated/module_from.atl`:

```
module Families2Persons;
create OUT : Persons from IN : Families;
```

`examples-curated/module_refining.atl`:

```
module RefineSample;
create OUT : Target refining IN : Source;
```

`examples-curated/query_simple.atl`:

```
query Q = 1;
```

---

## `argus`

**Harness:** `OK: argus (4 examples)`
**Parser lines:** 775
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/equates_mod.argus`:

```
M = equates
end M
```

`examples-curated/iter_empty.argus`:

```
count = iter ()
end count
```

`examples-curated/proc_empty.argus`:

```
noop = proc ()
end noop
```

`examples-curated/proc_returns.argus`:

```
one = proc () returns (int)
end one
```

---

## `python/python2-js`

**Harness:** `OK: python/python2-js (3 examples)`
**Parser lines:** 632
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/assign_print.py`:

```
x = 1
print x
```

`examples-curated/def_return.py`:

```
def add(a, b): return a + b
```

`examples-curated/if_pass.py`:

```
if x: pass
```

---

## `pcre`

**Harness:** `OK: pcre (3 examples)`
**Parser lines:** 403
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/alt_groups.re`:

```
(cat)|(dog)+
```

`examples-curated/anchors.re`:

```
^abc$
```

`examples-curated/quant_dot.re`:

```
a.+b*c?
```

---

## `lpc`

**Harness:** `OK: lpc (3 examples)`
**Parser lines:** 305
**quality:** `language_subset`

### Example evidence (first ≤5 lines)

`examples-curated/func_args.c`:

```
int add(int a, int b) {
    return a;
}
```

`examples-curated/func_return.c`:

```
int make() {
    return 0;
}
```

`examples-curated/init.c`:

```
int x;
```

