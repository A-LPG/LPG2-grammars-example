# xml

LPG **language_port** (parse-level) of [antlr/grammars-v4 `xml`](https://github.com/antlr/grammars-v4/tree/master/xml) examples.

Subset grammar, but shaped like real XML:

- optional `<?…?>` prolog with attributes
- elements with names (`a`, `web-app`, `xmlns:xsi`)
- attributes and nested content / text
- empty elements (`/>`)

No CDATA sections or XML comments in this port.

## Files

| File | Role |
|------|------|
| `XmlLexer.gi` | Character lexer |
| `XmlKWLexer.gi` | Keyword filter stub |
| `XmlParser.g` | Prolog + element subset parser |
| `examples/` | v4 copies: `books.xml`, `web.xml`, `underscore.xml` |
| `examples-curated/` | Extra small samples (not harnessed) |

## Verify

```bash
bash harness/run-one.sh xml
```

Harness globs: `examples/*.xml` (3 files; all parse_ok).
