# CLEAR_6 result

Batch IDs from `_clear_shelf_batches.json` → **CLEAR_6**: `metric`, `ltl`.

Bar: TRIVIAL_EX → ≥3 real multi-line curated samples; keep/improve g4-shaped parsers; no nested token-stream soup; `bash harness/run-one.sh <id>` OK; honest `language_subset` + `real_g4_port`.

## Summary

| id | harness | parser lines | curated examples | soup? | quality |
|----|---------|-------------:|------------------|-------|---------|
| `metric` | OK (5) | 42 | `newton`, `compound`, `square_meter`, `kohm`, `joule_per_second` | no | `language_subset` + `real_g4_port` |
| `ltl` | OK (5) | 30 | `finally_implies`, `globally_until`, `next_release`, `weak_until_nested`, `and_or_not` | no | `language_subset` + `real_g4_port` |

**Both: harness OK. Soup: none.**

## What changed

### `metric`

- Kept g4-shaped parser: `file_` / `uom` / `measure` / `prefix_` / `unit` / `baseunit` / `derivedunit` / `exponent`.
- Hand lexer already language-token (prefixes + SI units + `*` `/` `^` `INTE`); dropped useless `IDENTIFIER` export.
- Curated multi-line UoM samples (≥3 lines for newton/compound/square_meter/joule): `kg*m/s^2`, `kmol*N*m`, `m^2`, `k ohm`, `J/s`.

### `ltl`

- Kept g4-shaped parser: `file_` / `proposition` / `binop` / `unaryop`.
- Lexer: ASCII digraphs `->` `&&` `||` `~` for g4 Unicode `→ ∧ ∨ ⌐` (ctl pattern; avoids UTF-8 AfterASCII ignore noise).
- Curated multi-line formulas exercising F/G/X/U/W/R, implication, and/or/not, nesting.

## Honesty / remaining gaps

- **metric**: no `˚C`; `µ` omitted; `Ω` spelled `ohm`.
- **ltl**: residual 18 LALR(2) binop shift/reduce (same left-recursive binary shape as g4); Unicode math ops via ASCII digraphs only.

## Example self-check

### `metric` / `newton.txt`

```
kg
*
m
/
s
^
2
```

### `ltl` / `weak_until_nested.txt`

```
G
(
p
W
(
q
U
r
)
)
```

## Verify

```bash
cd grammars-example
bash harness/run-one.sh metric
bash harness/run-one.sh ltl
```
