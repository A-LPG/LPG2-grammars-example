# Agent notes (LPG grammars-example)

Playbook for AI agents and humans working in this repo. Adapted from antlr/grammars-v4’s `CLAUDE.md` (Trash/Maven workflow) to the **LPG harness**.

See also: [GLOSSARY.md](GLOSSARY.md) · [CONTRIBUTING.md](CONTRIBUTING.md) · [QUALITY.md](QUALITY.md) · [tools/SHELF_FIX.md](tools/SHELF_FIX.md)

Upstream Antlr source of truth: [antlr/grammars-v4](https://github.com/antlr/grammars-v4) (local clone often at `/Users/kuafu/Downloads/grammars-v4-master`).

## What this repo is

Parse-level **LPG v2** ports of grammars-v4 units. Acceptance is **not** “harness green on anything”:

- Forbidden: nested token-stream soup, `item ::= IDENTIFIER` dumps, `;`-only / single-token “examples”
- Required for a real port: g4-shaped nonterminals, language lexer, ≥3 multi-line curated examples, honest `quality` in `status.json`

Reference unit: `json/` (tiny upstream g4 → short but structural LPG parser).

## Hard rules (non-negotiable)

**No shrinking. No demotion.**

| Forbidden | Allowed |
|-----------|---------|
| Delete / rewrite-shorten `*Parser.g` to pass CI | Restore pre-shrink / grammars-v4 structure |
| Toy examples that drop language structure coverage | Add curated multi-line examples |
| Lower `quality`, set `parse_ok=false`, or thin subset pretending “done” | KW/lexer terminal-name alignment; `checkForKeyWord()`; literal/operator aliases |
| Speculative corpus fishing to “make green” by cutting rules | Widen rules toward g4 without removing core nonterminals |

If a unit was previously shrunk (e.g. debt from commit `043a1d6`), restore the fuller parser first, keep legitimate KW/lexer alignment fixes, then re-green with alignment — never by shrinking again.

**Java type-name ban (CI uses JDK 17):** with `automatic_ast=nested|toplevel`, a single-production NT becomes `static class <name>`. Do **not** use Java-illegal type names as NTs — especially `record`, `var`, `yield`, `sealed`, `permits`, plus classic keywords (`class`, `const`, `enum`, …). Rename (e.g. `record` → `apt_record`); multi-alt NTs that become `name0`/`name1` are fine.

**Linux case sensitivity:** CI is case-sensitive. File names in git must match `harness.json` / `%options fp=` / `import_terminals` exactly (e.g. `ProvNLexer.gi` ≠ `ProvnLexer.gi`). macOS APFS and Docker bind-mounts from macOS often hide this.

## Testing a grammar (LPG harness)

From a full **LPG2** checkout (this tree as the `grammars-example` submodule):

**1. Prerequisites (once):**

- `lpg` binary: `LPG_BIN` or `../lpg2/build/lpg-v*`
- JDK (`javac` / `java`)
- Java runtime classes: `../runtime/lpg-runtime/target/classes` (harness compiles sources if missing)

**2. Run one unit:**

```bash
cd grammars-example          # or: cd <LPG2>/grammars-example
bash harness/run-one.sh json
bash harness/run-one.sh sql/postgresql
```

Success prints `OK: <id> (... examples)`. Failure prints `FAILED:` / `PARSE FAIL:`.

**3. Examples used:**

`harness.json` → `example_globs` (prefer `examples-curated/**/*`). Do not point the harness at huge unused upstream dumps; quarantine with `tools/quarantine_unused_examples.py` if needed.

**4. Refresh catalog / quality:**

```bash
python3 tools/classify_quality.py
python3 tools/report.py
```

**5. Parallel agents:**

- Edit **only** IDs assigned to your batch (avoid `out-java` races and overwrites).
- Never claim OK without a fresh `bash harness/run-one.sh <id>` that prints `OK:`.
- Keep `IDENTIFIER` in lexer `%Export` if the KW filter template needs `TK_IDENTIFIER`.

## Porting checklist (real g4 port)

1. Diff against `grammars-v4/<id>/*.g4` (parser rule names, not line-count vanity).
2. Rewrite `*Parser.g` with language nonterminals — not `item/atom/paren` soup.
3. Hand-fix `*Lexer.gi` (+ `*KWLexer.gi` when using `LexerBasicMapF.gi`).
4. Add ≥3 **multi-line** files under `examples-curated/`.
5. `status.json`: `language_subset` + `real_g4_port`, or honest `language_port` only if essentially full small g4.
6. Harness green.

## Common failures

| Symptom | Likely cause | Fix |
|---------|--------------|-----|
| `new (` / empty `kwLexer` in generated Java | Missing `$kw_lexer_class` or dropped `IDENTIFIER` export | Restore `%Define $kw_lexer_class` + export `IDENTIFIER` |
| `Char_(`, `Char_{` invalid Java | Bare punctuation terminals without named aliases | Use `LeftParen ::= '('` style (see `json/JsonLexer.gi`) |
| `stmt` / `expr` expected at EOF | Trailing newline after last statement | Allow trailing separators (`seps_opt`) on the start symbol |
| Keywords parsed as `IDENTIFIER` | Dummy KWLexer / no `checkForKeyWord()` | Real KW rules + `Identifier /. checkForKeyWord(); ./` |
| Agent “OK” but re-run `PARSE FAIL` | Concurrent `out-java` race or lied report | Solo clean rebuild: `rm -rf <id>/out-java && bash harness/run-one.sh <id>` |
| Maven-style `*.errors` leftover from upstream | Copied from grammars-v4 Trash runs | Delete zero-length `*.errors` under examples; do not harness-parse them |

## Ambiguity / conflicts (LPG)

LPG reports shift/reduce and reduce/reduce at generate time (not ANTLR `--ambig`). Prefer:

- Left-factor / rewrite lists
- Narrower curated examples if the unit is an honest `language_subset`
- `%options backtrack` / `btParserTemplateF.gi` only when needed (and documented in `harness.json`)

ANTLR divergence-point terminology (for reading upstream issues): [GLOSSARY.md](GLOSSARY.md).

## Performance report

```bash
python3 tools/perf_report.py --preset reference --runs 3
# optional: --preset ports | --ids json,csv,java/java | --rebuild | --skip-build
```

Writes `performance.md` + `performance.json` (PT=lex+parse, TPS=tokens/PT). Driver: `harness/PerfDriver.java`.

## CI policy

Parent workflow gates **`language_port` + `language_subset`** with `parse_ok`. Smoke units are optional. Details: [CONTRIBUTING.md](CONTRIBUTING.md).
