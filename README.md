# LPG2-grammars-example

Two parallel corpora of LPG v2 grammar ports (mostly from [antlr/grammars-v4](https://github.com/antlr/grammars-v4)):

| Tree | Style | Status |
|------|--------|--------|
| [`bnf_example/`](bnf_example/) | Classic BNF (EBNF expanded to aux rules) | Full harness corpus + CI gate |
| [`ebnf_example/`](ebnf_example/) | `%Options ebnf` native sugar | Pilot (json, cookie, arithmetic, csv) + CI gate |

```bash
# from an LPG2 checkout
export LPG_BIN=$PWD/lpg2/build/lpg-v2.3.0

# classic BNF corpus
bash grammars-example/bnf_example/harness/run-one.sh json

# EBNF pilot
bash grammars-example/ebnf_example/harness/run-one.sh json
```

CI (`.github/workflows/grammars-example.yml`):

- `quality-gate` — `language_port` + `language_subset` in **both** corpora
- `smoke-optional` — `token_stream_smoke` in **both** corpora (`continue-on-error`; ebnf pilot unit: `nested`)

See [`bnf_example/AGENTS.md`](bnf_example/AGENTS.md) and [`ebnf_example/AGENTS.md`](ebnf_example/AGENTS.md).
