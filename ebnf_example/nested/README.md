# nested (EBNF smoke / L0)

Intentional **`token_stream_smoke`** unit for the EBNF pilot — nested `()` / `{}` / `[]` plus `IDENTIFIER` / `NUMBER` atoms. Not a language port.

Uses `%Options ebnf` (`item*`, grouped nests).

```bash
bash harness/run-one.sh nested
```

CI: optional job `smoke-optional` in `.github/workflows/grammars-example.yml`.
