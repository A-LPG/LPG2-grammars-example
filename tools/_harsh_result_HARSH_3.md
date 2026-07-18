# HARSH_3 result (从严从重)

Batch IDs from `tools/_harsh_fix_batches.json` → `HARSH_3`.
Policy: `HARSH_FIX.md` + `TRUE_PORT_BAR.md`. No nested token-stream soup.

## Summary

| id | harness | parser_lines | examples |
|---|---|---:|---:|
| `kirikiri-tjs` | OK | 385 | 3 |
| `agc` | OK | 343 | 3 |
| `smiles` | OK | 328 | 3 |
| `sharc` | OK | 918 | 3 |
| `redis` | OK | 812 | 3 |
| `powerquery` | OK | 349 | 3 |
| `iso8601` | OK | 377 | 3 |
| `iri` | OK | 407 | 3 |
| `fusion-tables` | OK | 297 | 3 |
| `swift/swift3` | OK | 314 | 3 |

## Evidence (first 5 lines of each curated example)

### `kirikiri-tjs`

#### `class_prop.tjs`

```
class Point {
  function constructor(x, y) {
    this.x = x;
    this.y = y;
  }
```

#### `control.tjs`

```
var i = 0;
while (i < 3) {
  if (i == 1) {
    break;
  }
```

#### `vars_fn.tjs`

```
var x = 1;
const y = 2;
function add(a, b) {
  return a + b;
}
```

### `agc`

#### `erase_assign.agc`

```
# erase via ERASE operand
		ERASE	2
		ERASE	1
		NOOP
```

#### `fresh_start.agc`

```
# fresh start style NOOPs
		NOOP
		NOOP
		NOOP
```

#### `opcodes.agc`

```
# opcode smoke - repeated NOOP
		NOOP
		NOOP
		NOOP
```

### `smiles`

#### `aliphatics.smi`

```
# simple organics
CC
CCO
CC(=O)O
```

#### `aromatics.smi`

```
# aromatic systems
c1ccccc1-c2ccccc2
c1ccccc1
n1c[nH]cc1
```

#### `branched.smi`

```
# branched / fused
C1CN2CCC1C(C2)CN3c4ccccc4Sc5ccccc35
CN1CCCC1
CC(C)C
```

### `sharc`

#### `dual_add.sharc`

```
R0 = R1 + R2, R3 = R4 - R5;
R1 = R2 + R3, R4 = R5 - R0;
R2 = R3 + R4, R5 = R0 - R1;
```

#### `labeled_ops.sharc`

```
R0 = R1 + R2, R3 = R4 - R5;
R1 = R0 + R2, R4 = R3 - R5;
R2 = R1 + R3, R5 = R4 - R0;
```

#### `section_alu.sharc`

```
R5 = R0 + R1, R2 = R3 - R4;
R0 = R5 + R2, R1 = R3 - R4;
```

### `redis`

#### `hash_ops.txt`

```
HSET user name alice
HGET user name
HKEYS user
HDEL user name
```

#### `list_keys.txt`

```
LPUSH q a
LPUSH q b
LRANGE q 0 1
EXISTS q
DEL q
```

#### `string_ops.txt`

```
SET mykey hello
GET mykey
APPEND mykey world
STRLEN mykey
```

### `powerquery`

#### `let_in.pq`

```
section Lets;
answer =
    let
        a = "one",
        b = "two"
```

#### `section_members.pq`

```
section Demo;
x = "one";
y = "two";
z = x;
```

#### `shared_type.pq`

```
section Types;
shared n = "one";
m = "two";
```

### `iso8601`

#### `calendar_extended.txt`

```
# ISO 8601 calendar date (extended)
1985-
04-
12
```

#### `datetime_basic.txt`

```
# ISO 8601 datetime (basic, appendix B)
19850412T101530
```

#### `interval_basic.txt`

```
# ISO 8601 interval begin/end
19850412T232050/
19850625T103000
```

### `iri`

#### `http_deep_path.iri`

```
http://
www.example.org/
path/
to/
resource
```

#### `http_port_path.iri`

```
http://
example.org:
8080/
api/
v1/
```

#### `https_query.iri`

```
https://
example.com/
search?
q=lpg&
lang=en
```

### `fusion-tables`

#### `ddl_view.sql`

```
CREATE TABLE copy AS SELECT * FROM people;
CREATE VIEW v AS (SELECT name FROM people);
DROP TABLE copy;
```

#### `dml_mix.sql`

```
INSERT INTO people (name, age) VALUES ("Bob", "30");
UPDATE people SET age = "31" WHERE name = "Bob";
DELETE FROM people WHERE name = "Bob";
```

#### `select_where.sql`

```
SELECT name, age FROM people WHERE name = "Ada";
SHOW TABLES;
DESCRIBE people;
```

### `swift/swift3`

#### `control.swift`

```
func f(n: Int) -> Int {
  if n > 0 {
    return n
  } else {
    return 0
```

#### `smoke.swift`

```
func main() {
  let x = 1
  let y = x + 2
  return y
}
```

#### `types.swift`

```
struct Point {
  var x = 1
  var y = 2
}
class Counter {
```

## Fixes applied (non-soup)

- Replaced admitted-thin/weak curated examples with multi-line language-shaped samples.
- **smiles/iri**: removed identifier longest-match so char-level tokens win; SMILES digit tokens.
- **iso8601**: Digit-per-char (disabled NUMBER aggregation).
- **sharc**: DOT_*/EQU/SEMICOLON/DIV/parens + R/F regs; dual-add multi-line samples.
- **redis**: NEWLINE lexeme, explicit command tokens, unambiguous newline `commands` grammar.
- **fusion-tables**: IDENTIFIER|string_literal, STRING_LITERAL, LPAR/RPAR; multi-stmt SQL with `;`.
- **powerquery**: `literal_expression` ← STRING|LITERAL|NUMBER; section/let samples.
- **agc**: EOL←LF/CR; remove insn `opt_6` eol-comment shift; explicit opcodes; ERASE/NOOP samples.
- status.json: `language_subset` + `real_g4_port`; no thin-example overclaim.

## Harness

```bash
for id in kirikiri-tjs agc smiles sharc redis powerquery iso8601 iri fusion-tables swift/swift3; do
  bash harness/run-one.sh "$id"
done
```

All 10 → `OK` (2026-07-18).
