# lpg (legacy LPG)

Meta-grammar for LPG itself. C++ host actions stripped for the Java harness
(`package=lpg.grammars.lpg`). Examples exercise `%Rules` / `%Define`-style
segments that the deterministic tables accept; full backtracking coverage is
not claimed.

```bash
LPG_BIN=../lpg2/build/lpg-v2.2.03 bash harness/run-one.sh lpg
```
