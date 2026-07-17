# java (legacy LPG — GJava*)

Legacy Eclipse IMP Java grammar (`GJavaLexer.gi` / `GJavaKWLexer.gi` /
`GJavaParser.g`). Package remains `org.eclipse.imp.lpg.parser` (generated
class names `JavaLexer` / `JavaParser`). Uses the backtracking parser template.

Not a grammars-v4 port — see `java/java/` for the Wave-C curated subset.

```bash
LPG_BIN=../lpg2/build/lpg-v2.2.03 bash harness/run-one.sh java
```
