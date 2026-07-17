# php

LPG **language_subset** of [antlr/grammars-v4 `php`](https://github.com/antlr/grammars-v4/tree/master/php).

Not a full PHP port. Covers:

- `<?php` open tag
- `$variable` assign / echo / return
- `function` declarations, `if` / `else` blocks
- expressions: literals, calls, index access, unary/binary ops

No classes, namespaces, heredocs, or alternative syntax.

## Verify

```bash
bash harness/run-one.sh php
```

Harness globs: `examples-curated/**/*.php` (4 files).
