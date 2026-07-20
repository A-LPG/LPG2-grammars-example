#!/usr/bin/env bash
# Scaffold + rewrite + harness for a wave of ebnf ports.
# Usage: batch_port_wave.sh w1|w2|w3 [--stamp-only-large]
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
WAVE="${1:?wave id}"
STAMP_LARGE="${2:-}"
export LPG_BIN="${LPG_BIN:-$(ls ../../lpg2/build/lpg-v* 2>/dev/null | head -1)}"
mapfile -t IDS < <(python3 - <<PY
import json
from pathlib import Path
w=json.loads(Path("tools/remaining_language_port_waves.json").read_text())["$WAVE"]
print("\n".join(w))
PY
)
mkdir -p /tmp/ebnf_lp_runs
echo "Wave $WAVE: ${#IDS[@]} units  LPG_BIN=$LPG_BIN"

if [[ "$STAMP_LARGE" == "--stamp-only" ]]; then
  python3 tools/port_from_bnf.py "${IDS[@]}"
  echo "stamp-only mode: skip rewrite"
else
  python3 tools/port_from_bnf.py "${IDS[@]}"
  python3 tools/rewrite_common_ebnf.py "${IDS[@]}" || true
fi

fail=0
ok=0
fails=()
for id in "${IDS[@]}"; do
  safe=${id//\//_}
  if bash harness/run-one.sh "$id" >"/tmp/ebnf_lp_runs/${WAVE}_${safe}.log" 2>&1; then
    ok=$((ok+1))
    echo "OK $id"
  else
    fail=$((fail+1))
    fails+=("$id")
    echo "FAIL $id"
  fi
done
echo "PASS1 ok=$ok fail=$fail"

# Revert + stamp-only for failures
for id in "${fails[@]+"${fails[@]}"}"; do
  [[ -z "${id:-}" ]] && continue
  src="../bnf_example/$id"
  for p in "$src"/*Parser.g; do
    [[ -f "$p" ]] || continue
    cp "$p" "$id/$(basename "$p")"
  done
  python3 tools/port_from_bnf.py --stamp-only "$id" >/dev/null
done

if ((${#fails[@]})); then
  fail2=0
  ok2=0
  still=()
  for id in "${fails[@]}"; do
    safe=${id//\//_}
    if bash harness/run-one.sh "$id" >"/tmp/ebnf_lp_runs/${WAVE}_${safe}_revert.log" 2>&1; then
      ok2=$((ok2+1))
      echo "OK_REVERT $id"
    else
      fail2=$((fail2+1))
      still+=("$id")
      echo "FAIL_REVERT $id"
    fi
  done
  echo "PASS2 revert ok=$ok2 fail=$fail2"
  if ((${#still[@]})); then
    printf 'STILL_FAIL %s\n' "${still[@]}"
    exit 1
  fi
fi

python3 tools/port_from_bnf.py --refresh-catalog
echo "Wave $WAVE complete"
