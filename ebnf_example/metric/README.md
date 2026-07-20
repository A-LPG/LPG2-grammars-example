# metric (EBNF)

LPG port of antlr/grammars-v4 `metric` (`metric.g4`).

g4-shaped nonterminals: `file_` → `uom` → `measure` / `prefix_` / `unit` / `baseunit` / `derivedunit` / `exponent`.

Subset notes: `˚C` omitted; `µ` omitted; `Ω` spelled `ohm`.

```bash
bash harness/run-one.sh metric
```


Classic-BNF twin: [`../../bnf_example/metric/`](../../bnf_example/metric/).
