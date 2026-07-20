# Real port checklist (not token-stream)

Goal: `*Parser.g` must come from grammars-v4 `.g4` **parser rules**, not `item ::= atom | paren`.

See also: `FORBIDDEN_SOUP.md`, `PORT_PLAN.md` (`python3 tools/scan_port_plan.py`).

## Workflow

1. Read `/Users/kuafu/Downloads/grammars-v4-master/<id>/*.g4`.
2. Skeleton: `python3 tools/antlr2lpg.py <id>` then **fix the generated lexer** (generic by default).
3. Keep Antlr nonterminals / start rule (rename only for Java keywords).
4. Expand `(x)*` / `(x)+` / `x?` via generated `list_` / `opt_` nonterminals.
5. Copy/select real examples; prefer `examples-curated/` for harness.
6. `bash harness/run-one.sh <id>` until PARSE OK.
7. `status.json`: `quality` = `language_subset` or `language_port`, notes include `real_g4_port`.

## Forbidden

- `nested token stream` / `item ::= atom | paren | brace`
- The 57-line nested token-stream template mass-overwrite
- Claiming ported while examples are synthetic soup unrelated to the language
