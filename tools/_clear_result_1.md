# CLEAR_1 — 花架子 → 真移植（evidence）

Batch: `CLEAR_1` from `tools/_clear_shelf_batches.json`

IDs: `stringtemplate`, `unicode/unicode16`, `logo/ucb-logo`, `asm/ptx/ptx-isa-2.1`, `python/python2-js`

Reference bar: `json/` (structural g4 port, not token-stream soup).

## Summary

| id | g4 (upstream) | LPG parser lines | curated ex | harness | quality | soup? |
|----|---------------|------------------|------------|---------|---------|-------|
| stringtemplate | STGParser.g4 **101** (full dir 1415 incl ST/Lex*) | **103** | **7** | OK | `language_subset` + `real_g4_port` | no |
| unicode/unicode16 | classify.g4 **3099** (lexer table) | **60** (parser rules tiny by design) | **5** | OK | `language_subset` + `real_g4_port` | no |
| logo/ucb-logo | UCBLogo.g4 **876** (~parser rules ~90; rest arity/lexer) | **87** | **4** | OK | `language_subset` + `real_g4_port` | no |
| asm/ptx/ptx-isa-2.1 | Ptx.g4 **3504** | **1908** | **3** | OK | `language_subset` + `real_g4_port` | no |
| python/python2-js | Python2.g4 **692** | **632** | **3** | OK | `language_subset` + `real_g4_port` | no |

All: `bash harness/run-one.sh <id>` → **OK**. No `item ::= atom` / nested token-stream soup.

---

## 1. stringtemplate

**Upstream:** `grammars-v4/stringtemplate/STGParser.g4` (101 lines). Full directory sum (~1421) includes STParser + Lex* — not all required for STG groups.

**LPG:** `StringtemplateParser.g` mirrors STG nonterminals: `group` / `delimiters` / `imports` / `template_` / `formalArgs` / `dict_` / `dictPairs` / `keyValue*`.

**Honest status:** `language_subset` — STG group files only; STParser template-body expression language not ported.

**Harness:** `OK: stringtemplate (7 examples)`

### Example heads (first 5 lines)

**dict_and_big.stg** (9 lines)
```
typeInit ::= [
  "int":"0",
  "float":"0.0",
  default:"null"
]
```

**dict_group.stg** (5 lines)
```
typeMap ::= [
  "int": "Integer",
  "bool": "Boolean",
  default: "Object"
]
```

**group_formals.stg** (6 lines)
```
page(title, items=[]) ::= "page"
link(url, text="click") ::= "link"
header(user) ::= <<
Welcome
>>
```

**hello.stg** (3 lines)
```
hello(name) ::= "Hello, <name>!"
bye() ::= "bye"
greet(x, y="friend") ::= "hi"
```

**hello_group.stg** (3 lines)
```
hi(name) ::= "Hello!"
bye() ::= "Goodbye"
thanks(x) ::= "Thanks <x>"
```

**import_delims.stg** (5 lines)
```
delimiters "$", "$"
import "base.stg"
import "utils.stg"
hi(x) ::= "hi"
footer() ::= "done"
```

**multi_template.stg** (3 lines)
```
header(title) ::= "Report: <title>"
row(name, val) ::= "<name>=<val>"
footer() ::= "end"
```

---

## 2. unicode/unicode16

**Upstream:** `classify.g4` — almost entirely lexer CLASSIFY_* BMP tables; parser is `file_` / `codepoint`.

**LPG:** Parser mirrors GC alts; lexer is ASCII + common GC subset (`AfterASCII` → `CLASSIFY_Lo`). Thin parser line count is **not** shelf soup — substance is classification tokens.

**Honest status:** `language_subset`; blocker: full BMP table not ported.

**Harness:** `OK: unicode/unicode16 (5 examples)`

### Example heads

**code_like.txt** (4)
```
Abc123
_tmp = 9
Call(x)
SUM_42
```

**controls_ws.txt** (4)
```
A	B
C D
E
F
```

**latin_sentence.txt** (3)
```
Hello World
Foo Bar Baz
The Quick Brown Fox
```

**mixed_idents.txt** (3)
```
foo_bar-42
(x+y)
a=b+c
```

**punct_math.txt** (4)
```
(a+b)*c
$x!=y
foo_bar-42
[1,2]
```

---

## 3. logo/ucb-logo

**Upstream:** `UCBLogo.g4` — large file from arity `@parser::members` + lexer; real parser rules ≈ `parse` / `instruction` / `procedure_def` / `expression`.

**LPG:** Structured `parse` → `instruction` → `procedure_def`/`macro_def`/`procedure_call` + layered expressions; lists/arrays as structured subsets. No arity Map / semantic predicates.

**Honest status:** `language_subset` + `real_g4_port`.

**Harness:** `OK: logo/ucb-logo (4 examples)`

### Example heads

**array_expr.txt** (4)
```
make "pts {1 2 3}
print (sum 1 2)
make "n :pts
print :n
```

**house_procs.txt** (16)
```
to square :size
	repeat 4 [fd :size rt 90] ; where is the turtle when this step completes?
end
	
to floor :size
```

**spiral_walk.txt** (10)
```
to spiral :n :len
	repeat :n [
		fd :len
		rt 90
		make "len :len + 5
```

**tree_procs.txt** (50)
```
to left_side
rt 20 fd 20 lt 20 fd 60 
end

to top_side
```

---

## 4. asm/ptx/ptx-isa-2.1

**Upstream:** `Ptx.g4` 3504 lines → antlr2lpg structural port (`AsmPtxPtxIsa21Parser.g` 1908 lines).

**Lexer fix (was shelf-broken):** DotIdentifier was dropped by DFA clash with `fltlit '.' Digits`; KWLexer lacked `'.'`→`Dot` map; punctuation/literals must be `T_*` / `T_WORD`. Fixed:

- DotIdentifier starts with letter/`_` only; digit-leading `.1d`/`.2d`/`.3d`/`.4byte` as explicit tokens
- KWLexer custom `tokenKind['.']=Dot`
- `checkForKeyWord($_T_WORD)`; `%r`/`$`/`_` words; `T_OC`/`T_CC`/`T_OP`/`T_CP`/`T_SEMICOLON`/…

**Honest status:** `language_subset` — curated kernel subset (version/target/entry/reg/mov/ret), not full ISA.

**Harness:** `OK: asm/ptx/ptx-isa-2.1 (3 examples)`

### Example heads

**entry_ret.ptx** (8)
```
.version 2.1
.target sm_20
.entry main()
{
	.reg .u32 %r<1>;
```

**mov_reg.ptx** (10)
```
.version 2.1
.target sm_20
.entry foo()
{
	.reg .u32 %r<4>;
```

**visible_entry.ptx** (8)
```
.version 2.1
.target sm_10
.visible .entry kernel()
{
	.reg .u32 %r<2>;
```

---

## 5. python/python2-js

**Upstream:** `Python2.g4` 692 → LPG 632 (`file_input`, `funcdef`, `if_stmt`, `while_stmt`, …). antlr2lpg structural port already present; CLEAR issue was **WEAK_EX**.

**Examples:** multi-line assign/print, def/return, if/while (not `;` / single-token toys).

**Honest status:** `language_subset` + `real_g4_port`; not claiming full indent/stdlib surface.

**Harness:** `OK: python/python2-js (3 examples)`

### Example heads

**assign_print.py** (6)
```
x = 1
y = 2
z = x + y
print x
print y
```

**def_return.py** (6)
```
def add(a, b):
    return a + b

def main():
    x = add(1, 2)
```

**if_while.py** (6)
```
x = 3
if x:
    print x
while x:
    x = x - 1
```

---

## Commands (repro)

```bash
cd grammars-example
for id in stringtemplate unicode/unicode16 logo/ucb-logo asm/ptx/ptx-isa-2.1 python/python2-js; do
  bash harness/run-one.sh "$id"
done
```

Observed (2026-07-18): all five print `OK: …` with example counts 7 / 5 / 4 / 3 / 3.
