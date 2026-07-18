# HARSH_1 TRUE PORT results
Batch: `tools/_harsh_fix_batches.json` → `HARSH_1`
V4 root: `/Users/kuafu/Downloads/grammars-v4-master`
Bar: `HARSH_FIX.md` / `TRUE_PORT_BAR.md` / `FORBIDDEN_SOUP.md`

| id | parser_lines | harness | diagnosis → fix |
|---|---:|---|---|
| `unicode/unicode16` | 60 | OK (5) | THIN+TRIVIAL_EX+OVERCLAIM: g4 is mostly lexer CLASSIFY_* tables; prior port had … |
| `stringtemplate` | 103 | OK (3) | THIN+OVERCLAIM: STGParser ~100 lines (OK) but examples were trivial/header-wrong… |
| `logo/ucb-logo` | 87 | OK (4) | THIN+OVERCLAIM: g4 mostly arity/@members; parser rules ~90 lines — kept structur… |
| `evm-bytecode` | 185 | OK (3) | THIN+OVERCLAIM: parser~opcodes list; KW lacked digits/PUSH*; examples were singl… |
| `bison` | 228 | OK (3) | THIN+OVERCLAIM: regen grew rules; %% token kind mismatch OP_24966 vs OP_82957; p… |
| `plucid` | 199 | OK (3) | TRIVIAL_EX+OVERCLAIM: smoke was `1`; identifier was LETTER not IDENTIFIER; neede… |
| `sql/trino` | 2139 | OK (3) | TRIVIAL_EX: only SELECT 1; KW used LowerCaseMap (broke UPPER); punct/SEMI/IDENTI… |
| `sql/teradata` | 110 | OK (3) | TRIVIAL_EX: SELECT 1; wrong start request_modifier; full 8k-line port aborts LPG… |
| `spl` | 165 | OK (3) | THIN: regen + multi-line field searches (pipes/OR still limited).… |
| `kquery` | 183 | OK (3) | THIN: width_type/ARROW/Identifier/Boolean token fixes; real array+query samples.… |

## Per-id evidence (first 5 lines of each curated example)

### `unicode/unicode16`

- **Diagnosis:** THIN+TRIVIAL_EX+OVERCLAIM: g4 is mostly lexer CLASSIFY_* tables; prior port had 1-char toys and overclaimed full GC table.
- **Parser lines:** 60
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `code_like.txt` (4 lines)

```
Abc123
_tmp = 9
Call(x)
SUM_42
```

#### `controls_ws.txt` (4 lines)

```
A	B
C D
E
F
```

#### `latin_sentence.txt` (3 lines)

```
Hello World
Foo Bar Baz
The Quick Brown Fox
```

#### `mixed_idents.txt` (3 lines)

```
foo_bar-42
(x+y)
a=b+c
```

#### `punct_math.txt` (4 lines)

```
(a+b)*c
$x!=y
foo_bar-42
[1,2]
```

### `stringtemplate`

- **Diagnosis:** THIN+OVERCLAIM: STGParser ~100 lines (OK) but examples were trivial/header-wrong; concurrent soup briefly wiped lexer.
- **Parser lines:** 103
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `dict_group.stg` (5 lines)

```
typeMap ::= [
  "int": "Integer",
  "bool": "Boolean",
  default: "Object"
]
```

#### `hello_group.stg` (3 lines)

```
hi(name) ::= "Hello!"
bye() ::= "Goodbye"
thanks(x) ::= "Thanks <x>"
```

#### `multi_template.stg` (3 lines)

```
alpha() ::= "a"
beta() ::= "b"
gamma() ::= "c"
```

### `logo/ucb-logo`

- **Diagnosis:** THIN+OVERCLAIM: g4 mostly arity/@members; parser rules ~90 lines — kept structural Logo rules; needed multi-line procs.
- **Parser lines:** 87
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `array_expr.txt` (4 lines)

```
make "pts {1 2 3}
print (sum 1 2)
make "n :pts
print :n
```

#### `house_procs.txt` (16 lines)

```
to square :size
	repeat 4 [fd :size rt 90] ; where is the turtle when this step completes?
end
	
to floor :size
```

#### `spiral_walk.txt` (10 lines)

```
to spiral :n :len
	repeat :n [
		fd :len
		rt 90
		make "len :len + 5
```

#### `tree_procs.txt` (50 lines)

```
to left_side
rt 20 fd 20 lt 20 fd 60 
end

to top_side
```

### `evm-bytecode`

- **Diagnosis:** THIN+OVERCLAIM: parser~opcodes list; KW lacked digits/PUSH*; examples were single STOP.
- **Parser lines:** 185
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `add_jump.evm` (9 lines)

```
PUSH1
PUSH1
ADD
PUSH1
JUMPI
```

#### `calldata_dispatch.evm` (15 lines)

```
PUSH1
CALLDATASIZE
LT
PUSH2
JUMPI
```

#### `store_return.evm` (5 lines)

```
PUSH1
MSTORE
PUSH1
PUSH1
RETURN
```

### `bison`

- **Diagnosis:** THIN+OVERCLAIM: regen grew rules; %% token kind mismatch OP_24966 vs OP_82957; percent_kw required.
- **Parser lines:** 228
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `calc.y` (12 lines)

```
%token NUM
%left PLUS MINUS
%%
input : line
      ;
```

#### `expr_prec.y` (15 lines)

```
%token ID NUM
%left PLUS MINUS
%left STAR
%%
expr : term
```

#### `tokens.y` (9 lines)

```
%token ID NUMBER
%%
program : stmt
        | program stmt
        ;
```

### `plucid`

- **Diagnosis:** TRIVIAL_EX+OVERCLAIM: smoke was `1`; identifier was LETTER not IDENTIFIER; needed if/case/call samples.
- **Parser lines:** 199
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `arith_call.plu` (4 lines)

```
f(
  1,
  g(3)
)
```

#### `case_expr.plu` (5 lines)

```
case x of
  1: a;
  2: b;
  default: c
end
```

#### `if_expr.plu` (4 lines)

```
if 1
then 2
else 3
fi
```

### `sql/trino`

- **Diagnosis:** TRIVIAL_EX: only SELECT 1; KW used LowerCaseMap (broke UPPER); punct/SEMI/IDENTIFIER_ mismatches.
- **Parser lines:** 2139
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `create_view.sql` (4 lines)

```
CREATE VIEW sales_v AS
SELECT region, amount AS total
FROM sales
WHERE region IS NOT NULL;
```

#### `insert_select.sql` (4 lines)

```
INSERT INTO archive
SELECT id, name
FROM events
WHERE event_date < 20240101;
```

#### `select_join.sql` (5 lines)

```
SELECT a.id, b.name
FROM orders a
JOIN customers b ON a.customer_id = b.id
WHERE a.status = 1
ORDER BY a.id;
```

### `sql/teradata`

- **Diagnosis:** TRIVIAL_EX: SELECT 1; wrong start request_modifier; full 8k-line port aborts LPG SHRT_MAX — curated DML subset.
- **Parser lines:** 110
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `create_view.sql` (4 lines)

```
CREATE VIEW emp_v AS
SELECT emp_id, name
FROM employee
WHERE active = 1;
```

#### `insert_values.sql` (4 lines)

```
INSERT INTO employee
  (name, id, dept_id)
VALUES
  (angela, 100, 12);
```

#### `select_where.sql` (4 lines)

```
SELECT emp_id, name, salary
FROM employee
WHERE dept_id = 12
ORDER BY name;
```

### `spl`

- **Diagnosis:** THIN: regen + multi-line field searches (pipes/OR still limited).
- **Parser lines:** 165
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `multi_fields.spl` (4 lines)

```
index=web
sourcetype=access_combined
status=500
method=POST
```

#### `quoted_source.spl` (3 lines)

```
source="/var/log/app.log"
level=error
user=admin
```

#### `simple_search.spl` (3 lines)

```
source="error.log"
status=404
host=web01
```

### `kquery`

- **Diagnosis:** THIN: width_type/ARROW/Identifier/Boolean token fixes; real array+query samples.
- **Parser lines:** 183
- **status.json:** quality=`language_subset`, parse_ok=true
- **Soup:** none

#### `arrays_only.kquery` (3 lines)

```
array arr[1] : w32 -> w8 = symbolic
array arr_1[1] : w32 -> w8 = symbolic
array const_arr1[5] : w32 -> w8 = [0 0 0 0 0]
```

#### `simple_query.kquery` (3 lines)

```
(query [(Eq false
             (Eq 1 2))]
        false)
```

#### `ule_query.kquery` (3 lines)

```
(query [(Ule 1 2)
         (Ule 3 4)]
        false)
```

## Notes

- `sql/teradata`: full structural port retained as `SqlTeradataParser.g.full`; active parser is curated DML subset because LPG aborts on full tables (`Assertion failed: offset <= SHRT_MAX`).
- `unicode/unicode16`: start expanded to `codepoints+` so multi-line ASCII classification samples are valid; full BMP table still blocker.
- Concurrent agents briefly soup-replaced some lexers; restored real lexers from backup before final harness. Deleted stale alternate-stem soup files (`Unicode16Lexer.gi`, `TrinoLexer.gi`, `TeradataLexer.gi`).
- All ten: harness OK on ≥3 multi-line curated samples; `status.json` = `language_subset` (no overclaim).
