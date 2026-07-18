# FORBIDDEN: nested token-stream soup

Agents and scripts **must not** write parsers that look like:

```
-- Generated parse-level parser (nested token stream)
item ::= atom | paren | brace | bracket
```

That template was mass-regressed into ~140 units and is not a language port.

## Required instead

1. `python3 tools/antlr2lpg.py <id>` (structural g4 → LPG)
2. Hand-fix the generated lexer
3. Curate real examples; `bash harness/run-one.sh <id>`
4. `status.json` notes: `real_g4_port`

## Re-scan

```bash
python3 tools/scan_port_plan.py
```

See `tools/PORT_PLAN.md`.
