# sql/trino

**Quality: `token_stream_smoke` — not a language grammar.**

Scaffold / nested token-stream smoke for antlr/grammars-v4 `sql/trino`. Harness may report `parse_ok`; that does **not** mean a real LPG language port.

See `status.json` and `catalog.json` → `quality_schema`.

```bash
bash harness/run-one.sh sql/trino
```

Unused upstream examples live in `examples-upstream-unused/` (not harnessed); full corpus: https://github.com/antlr/grammars-v4/tree/master/sql/trino.
