# java/java (EBNF)

Structural LPG language port of antlr/grammars-v4 `java/java` (JavaLexer.g4 + JavaParser.g4).

- **Quality:** `language_port`
- **Start:** `compilationUnit`
- **KWLexer:** Java keywords / literals via `JavaKWLexer.gi`
- **Not** the legacy `grammars-example/java/GJava*` grammars
- Examples: `examples-curated/**/*.java` (subset of v4 examples that parse under LALR)

```bash
bash grammars-example/harness/run-one.sh java/java
```


Classic-BNF twin: [`../../bnf_example/java/java/`](../../bnf_example/java/java/).
