#!/usr/bin/env bash
# Run harness for all catalog units in a tier that have harness.json.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
GE_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
TIER="${1:-}"
if [[ -z "$TIER" ]]; then
  echo "Usage: $0 <A|B|C|D>" >&2
  exit 2
fi
fail=0
ok=0
skip=0
while IFS= read -r id; do
  [[ -z "$id" ]] && continue
  if [[ ! -f "$GE_ROOT/$id/harness.json" ]]; then
    echo "SKIP (no harness): $id"
    skip=$((skip + 1))
    continue
  fi
  echo "======== $id ========"
  if bash "$SCRIPT_DIR/run-one.sh" "$id"; then
    ok=$((ok + 1))
  else
    fail=$((fail + 1))
  fi
done < <(python3 - "$GE_ROOT/catalog.json" "$TIER" <<'PY'
import json, sys
c = json.load(open(sys.argv[1], encoding="utf-8"))
tier = sys.argv[2]
for g in c["grammars"]:
    if g.get("tier") == tier and g.get("source_path"):
        print(g["id"])
PY
)
echo "tier $TIER: ok=$ok fail=$fail skip=$skip"
[[ "$fail" -eq 0 ]]
