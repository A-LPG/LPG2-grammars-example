# java/java

Parse-level LPG port of antlr/grammars-v4 `java/java` as a **language subset**.

Covers package/import/class skeletons plus statements and expressions (`if`/`while`/`return`, locals, assignments, calls, arithmetic).

Does **not** replace the legacy `grammars-example/java/` LPG grammar (`GJava*`). Examples under `examples/` are curated (including trimmed v4 samples); full AllInOne* files are out of scope.

```bash
bash ../../harness/run-one.sh java/java
```
