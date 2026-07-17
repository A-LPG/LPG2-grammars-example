# python/python3

Parse-level LPG port of antlr/grammars-v4 `python/python3` as a **curated subset** (flat scripts).

## Limitation: no INDENT / DEDENT

This port does **not** implement Python’s significant indentation (lexer modes for `INDENT`/`DEDENT`). Suites after `:` must be a **same-line** simple statement. Multi-line indented blocks are out of scope.

Supported shape:

- Top-level statements separated by newlines and/or `;`
- Assignments, calls, `def` / `if` / `else` / `return` / `pass`
- Simple expressions (`+ - * /`, comparisons, `and` / `or` / `not`, literals)

Curated examples live under `examples-curated/` (at least five flat scripts).

```bash
bash ../../harness/run-one.sh python/python3
```
