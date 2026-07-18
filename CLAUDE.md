# Claude / agent entrypoint

This file exists for the same reason as [antlr/grammars-v4 `CLAUDE.md`](https://github.com/antlr/grammars-v4/blob/master/CLAUDE.md): a short, agent-oriented “how do I work in this repo?” note.

**LPG equivalent (read this):** [AGENTS.md](AGENTS.md)

Supporting docs:

- [GLOSSARY.md](GLOSSARY.md)
- [CONTRIBUTING.md](CONTRIBUTING.md)
- [QUALITY.md](QUALITY.md)
- [tools/SHELF_FIX.md](tools/SHELF_FIX.md)
- [performance.md](performance.md) — LPG harness timings (`python3 tools/perf_report.py`)

Upstream grammars-v4 uses the Trash Toolkit (`dotnet trash gen`) and Maven. This repo uses `bash harness/run-one.sh <id>` instead — do not run `trgen` / `mvn test` here unless you are comparing against an Antlr clone.
