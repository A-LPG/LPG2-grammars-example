# c

Parse-level LPG port of antlr/grammars-v4 `c` as a **language subset**.

Supports a small C fragment: top-level functions and declarations, `int`/`void`/`char`, locals, `return` / `if` / `while`, calls, and arithmetic (including binary literals for `BinaryDigit.c`). Not a full C grammar (no preprocessor, structs, pointers-as-types, `for`, etc.).

```bash
bash ../harness/run-one.sh c
```
