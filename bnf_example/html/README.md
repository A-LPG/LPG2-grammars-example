# html

LPG **language_subset** of [antlr/grammars-v4 `html`](https://github.com/antlr/grammars-v4/tree/master/html).

Not a browser HTML5 grammar. The parser accepts a document of:

- `<!DOCTYPE …>`
- elements with attributes (quoted or bare names)
- nested content and text
- self-closing tags (`/>`)

## Files

| File | Role |
|------|------|
| `HtmlLexer.gi` | Character lexer |
| `HtmlKWLexer.gi` | Keyword filter stub (no HTML keywords required) |
| `HtmlParser.g` | Element/text/attr subset parser |
| `examples-curated/` | Harness inputs (small well-formed HTML) |
| `examples/` | Large v4 copies kept for reference (not harnessed) |

## Verify

```bash
bash harness/run-one.sh html
```

Harness globs: `examples-curated/**/*` (4 files). Large site dumps under `examples/` stay out of the harness.
