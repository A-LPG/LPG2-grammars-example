# HARSH_5 result

Batch: `unicode/graphemes`, `esolang/barrous`, `doiurl`, `dice`, `metric`, `rfc822/rfc822-datetime`, `ctl`, `propcalc`, `tnt`, `bibcode`.

## Summary

| id | parser lines | soup? | harness | quality |
|----|-------------:|-------|---------|---------|
| `unicode/graphemes` | 24 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `esolang/barrous` | 38 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `doiurl` | 33 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `dice` | 36 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `metric` | 42 | no | OK (4 curated) | `language_subset` + `real_g4_port` |
| `rfc822/rfc822-datetime` | 37 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `ctl` | 31 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `propcalc` | 36 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `tnt` | 43 | no | OK (3 curated) | `language_subset` + `real_g4_port` |
| `bibcode` | 34 | no | OK (3 curated) | `language_subset` + `real_g4_port` |


## Honest blockers

- `unicode/graphemes`: no Unicode `Grapheme_Cluster_Break` / full emoji ZWJ/Hangul — NonControl+CRLF subset
- `ctl`: LALR binop conflicts; Unicode math ops via ASCII digraphs (`->`, `&&`, `||`, `~`)
- `metric`: no `˚C`; `µ` omitted; `Ω` spelled `ohm`
- `tnt`: residual LALR expr conflicts (same shape as g4)

## Method

1. Structural g4-shaped parsers (not token-stream soup); hand-fixed compact lexers.
2. `examples-curated/` ≥3 multi-line samples exercising each language.
3. `bash harness/run-one.sh <id>` → OK on curated set.
4. Honest `language_subset` + blockers where LPG cannot do full Unicode properties / math ops.

## Example self-check (first 5 lines each)

### `unicode/graphemes`

**ascii_lines.txt**
```
ABCDE
FGHIJ
KLMNO
```

**mixed_bmp.txt**
```
Hello world
Cafe noir
Rights.
```

**udhr_snippet.txt**
```
All human beings are born free
and equal in dignity and rights.
They are endowed with reason.
```

### `esolang/barrous`

**countdown.txt**
```
num;5
|>2
|=
|#num
|num-1
```

**io_rand.txt**
```
&ch
|@ch
|n?9
|#n
|!
```

**truth.txt**
```
%truth
|truth>3
|#1
|<1
|#0
```

### `doiurl`

**chapter.txt**
```
doi:10.1002/
0470841559.ch1
```

**nphys.txt**
```
doi:10.10.1038/
nphys1170
```

**with_query.txt**
```
doi:10.1594/
PANGAEA.726855
?lang=en
#section-1
```

### `dice`

**advantage.txt**
```
(
2d20
+
5
)
```

**damage_mix.txt**
```
1d12
+
1d6
+
3
```

**party_roll.txt**
```
3d6
+
2d8
+
4
```

### `metric`

**compound.txt**
```
kmol
*
N
*
m
```

**kohm_ms.txt**
```
k
ohm
```

**newton.txt**
```
kg
*
m
/
s
```

**square_meter.txt**
```
m
^
2
```

### `rfc822/rfc822-datetime`

**est_morning.txt**
```
Wed,
02 Oct 82
08:00:00
EST
```

**gmt_noday.txt**
```
15 Nov 25
12:30:45
GMT
```

**offset_afternoon.txt**
```
Wed,
02 Oct 99
15:00:00
+0200
```

### `ctl`

**ef_eg_af.txt**
```
EF
(
EG
p
->
```

**global_and.txt**
```
AG
(
p
&&
q
```

**until.txt**
```
E
[
p
U
q
```

### `propcalc`

**equiv_expand.txt**
```
(p <-> q)
|-
((p -> q) ^ (q -> p))
```

**modus_ponens.txt**
```
(
(p -> q)
^
p
)
```

**syllogism.txt**
```
(
(p -> q)
^
(q -> r)
)
```

### `tnt`

**commutative.txt**
```
Aa:
Ab:
(a + b)
=
(b + a)
```

**primes_formula.txt**
```
Aa:
Eb:
~Ec:
Ed:
(a + Sb)
```

**two_plus_three.txt**
```
(SS0 + SSS0)
=
SSSSS0
```

### `bibcode`

**aj_1974.txt**
```
1974
AJ...
.79.
.819
H
```

**apj_letter.txt**
```
1970
ApJ..
.161
L.77
K
```

**mnras_1924.txt**
```
1924
MNRAS
..84
.308
E
```

## Not soup

No `nested token stream` / `item ::= atom | paren` templates in any HARSH_5 parser.

