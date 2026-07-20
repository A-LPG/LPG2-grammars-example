# REPAIR_1 result

Batch IDs: `flatbuffers`, `cto`, `aql`

Policy: `tools/REPAIR.md` — replaced dump-soup (`items ::= item` / `item ::= IDENTIFIER`) with structural g4 ports.

| id | harness | examples | quality | notes |
|----|---------|----------|---------|-------|
| flatbuffers | OK | 3 | language_subset | real_g4_port of FlatBuffers.g4: schema/include_/namespace_decl/type_decl/enum_decl/union_decl/root_decl/field_decl/rpc_decl; curated monster/greeter/simple_schema |
| cto | OK | 3 | language_subset | real_g4_port of CtoParser.g4: modelUnit/namespace/import/asset/concept/enum/participant/transaction/event; FoldedCaseMap for String/Integer/Boolean; curated car/owner/transaction (no decorator/regex/range) |
| aql | OK | 3 | language_subset | real_g4_port of ArangoDbParser.g4 subset: arangodb_query/for_op/let/filter/sort/limit/return + INSERT/UPDATE/REMOVE; layered expr; curated for_return/let_filter/insert_update |

## Harness tails

```
OK: flatbuffers (3 examples)
OK: cto (3 examples)
OK: aql (3 examples)
```

## What was wrong

All three parsers were token-stream soup (`schema/modelUnit/arangodb_query ::= $empty | items`, `item ::= IDENTIFIER | …keywords…`). Examples existed but did not exercise language structure.

## Files touched (exclusive IDs only)

- `flatbuffers/FlatbuffersParser.g`, `harness.json`, `status.json`, `examples-curated/*`
- `cto/CtoParser.g`, `CtoLexer.gi`, `CtoKWLexer.gi`, `harness.json`, `status.json`, `examples-curated/*`
- `aql/AqlParser.g`, `AqlLexer.gi`, `AqlKWLexer.gi`, `harness.json`, `status.json`, `examples-curated/*`
- `tools/_repair_result_1.md` (this file)
