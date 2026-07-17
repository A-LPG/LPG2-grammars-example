# scala/scala3

**Quality: `token_stream_smoke` — not a language grammar.**

Scaffold / nested token-stream smoke for antlr/grammars-v4 `scala/scala3`. Harness may report `parse_ok`; that does **not** mean a real LPG language port.

See `status.json` and `catalog.json` → `quality_schema`.

```bash
bash harness/run-one.sh scala/scala3
```

Unused upstream examples live in `examples-upstream-unused/` (not harnessed); full corpus: https://github.com/antlr/grammars-v4/tree/master/scala/scala3.
