# HARSH_7 从严从重 result

Batch: `tools/_harsh_fix_batches.json` → `HARSH_7`
Policy: `HARSH_FIX.md` + `TRUE_PORT_BAR.md`
V4 root: `/Users/kuafu/Downloads/grammars-v4-master`

## Results

| id | g4 | lpg | soup | harness | quality |
|---|---:|---:|---|---|---|
| `lcc` | 79 | 51 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `tl` | 79 | 30 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `trac` | 78 | 41 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `esolang/wheel` | 76 | 28 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `vba/vba_like` | 74 | 68 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `aterm` | 71 | 53 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `lisp` | 69 | 33 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `istc` | 68 | 32 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `lambda` | 65 | 31 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `rfc1035` | 65 | 25 | no | OK (3 curated) | `language_subset` + `real_g4_port` |

## Method

1. Upstream g4s are tiny (65–80 lines); kept structural LPG parsers (already g4-shaped, not soup).
2. Added `examples-curated/` with ≥3 multi-line samples exercising real constructs.
3. Pointed `harness.json` → `examples-curated/**/*`; `bash harness/run-one.sh` OK on all ten.
4. `status.json`: `language_subset` + `real_g4_port`; stripped `language_port` overclaim (`lisp`, `vba/vba_like`).
5. Hand lexer fixes: `rfc1035` skip HT/LF/CR for multiline labels; `lambda` ASCII `\` stand-in for λ (byte LexStream).

## Example heads (first ≤5 lines each)

### `lcc`

**climate_cutters.txt**
```
QC 981.8
.G56 G578 2002
```

**hawking_physics.txt**
```
QB981
.H377 1998
```

**law_reporter.txt**
```
KF240
.C538 1989
```

### `tl`

**always_not.txt**
```
G
~
p
```

**nested_always.txt**
```
G
(
~
p
|
```

**was_or.txt**
```
H
(
p
|
q
```

### `trac`

**neutral_call.txt**
```
##(
ps
,
##(
rs
```

**print_nested.txt**
```
#(
ps
,
#(
rs
```

**read_handle.txt**
```
#(
read string
,
handle
,
```

### `esolang/wheel`

**hello_chars.txt**
```
C72
C69
C76
C76
C79
```

**inc_dump.txt**
```
I10
>
+
>
+2
```

**loop_store.txt**
```
I
*
Y00
V
$
```

### `vba/vba_like`

**bracket_specials.txt**
```
-][?][#]
[[][-A-]*?
[A-Z-]
```

**invoice_wild.txt**
```
inv-[A-Z]#
*
[0-9][0-9]
```

**range_digit_neg.txt**
```
a[L-P]#
[!c-e]*
```

### `aterm`

**appl_nested.txt**
```
exam(
  pair(
    yellow
    ,
    9
```

**list_placeholders.txt**
```
[
  f
  ,
  g(
    [1, 2]
```

**typed_placeholder.txt**
```
exam(
  <appl(<term>, 9)>
  ,
  <int>
  ,
```

### `lisp`

**cons_pair.txt**
```
(
  cons
  a
  b
)
```

**dotted_pair.txt**
```
(
  a
  .
  b
)
```

**nested_cond.txt**
```
(
  cond
  (
    (zerop n)
    one
```

### `istc`

**istc_a02.txt**
```
ISTC A02-
2009-
000004BE-
A
```

**istc_b11.txt**
```
ISTC B11-
2015-
00ABCDEF-
F
```

**istc_spaced.txt**
```
ISTC C03
 2018
 12345678
 9
```

### `lambda`

**abs_pair.txt**
```
\a.
(
  a
  b
)
```

**identity_app.txt**
```
(
  \a.
  a
  g
)
```

**nested_app.txt**
```
(
  (
    \a.
    a
    b
```

### `rfc1035`

**isi_edu.txt**
```
A
.
ISI
.
EDU
```

**mit_lcs.txt**
```
XX
.
LCS
.
MIT
```

**sri_nic.txt**
```
SRI-NIC
.
ARPA
```

