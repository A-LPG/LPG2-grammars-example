#!/usr/bin/env bash
# Generate (Java) + compile + parse examples for one grammars-example unit.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
GE_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
# Resolve LPG2 checkout: corpus may live at grammars-example/ or grammars-example/bnf_example/
REPO=""
for cand in "$GE_ROOT/.." "$GE_ROOT/../.."; do
  if [[ -d "$cand/lpg2" && -d "$cand/runtime/lpg-runtime" ]]; then
    REPO="$(cd "$cand" && pwd)"
    break
  fi
done
if [[ -z "$REPO" ]]; then
  REPO="$(cd "$GE_ROOT/../.." && pwd)"
fi
ID="${1:-}"
if [[ -z "$ID" ]]; then
  echo "Usage: $0 <grammar-id>   e.g. json or esolang/brainfuck" >&2
  exit 2
fi

UNIT="$GE_ROOT/$ID"
if [[ ! -d "$UNIT" ]]; then
  echo "missing unit dir: $UNIT" >&2
  exit 2
fi
HARNESS_JSON="$UNIT/harness.json"
if [[ ! -f "$HARNESS_JSON" ]]; then
  echo "missing $HARNESS_JSON" >&2
  exit 2
fi

LPG_BIN="${LPG_BIN:-}"
if [[ -z "$LPG_BIN" ]]; then
  shopt -s nullglob
  for c in "$REPO/lpg2/build"/lpg-v* "$REPO/lpg2/build-plan"/lpg-v* "$REPO/lpg2/build-prosthetic-b"/lpg-v*; do
    [[ -x "$c" ]] && LPG_BIN="$c" && break
  done
  shopt -u nullglob
fi
if [[ -z "${LPG_BIN:-}" || ! -x "$LPG_BIN" ]]; then
  echo "Set LPG_BIN to lpg2 executable" >&2
  exit 2
fi

TEMPLATES="$REPO/lpg-generator-templates-2.1.00"
TPL_JAVA="$TEMPLATES/templates/java"
INC_JAVA="$TEMPLATES/include/java"
RUNTIME_CLASSES="${LPG_RUNTIME_CLASSES:-$REPO/runtime/lpg-runtime/target/classes}"
RUNTIME_SRC="$REPO/runtime/lpg-runtime/src"
MESSAGES_SRC="$RUNTIME_SRC/lpg/runtime/messages.properties"
MESSAGES_DST="$RUNTIME_CLASSES/lpg/runtime/messages.properties"
if [[ ! -d "$RUNTIME_CLASSES/lpg/runtime" ]]; then
  echo "==> compiling Java runtime into $RUNTIME_CLASSES"
  mkdir -p "$RUNTIME_CLASSES"
  # shellcheck disable=SC2046
  javac -encoding UTF-8 -d "$RUNTIME_CLASSES" $(find "$RUNTIME_SRC" -name '*.java')
fi
# ResourceBundle "lpg.runtime.messages" is not produced by javac; copy explicitly.
if [[ -f "$MESSAGES_SRC" && ! -f "$MESSAGES_DST" ]]; then
  mkdir -p "$(dirname "$MESSAGES_DST")"
  cp "$MESSAGES_SRC" "$MESSAGES_DST"
fi

read_json() {
  python3 - "$HARNESS_JSON" "$1" <<'PY'
import json, sys
h = json.load(open(sys.argv[1], encoding="utf-8"))
print(h[sys.argv[2]])
PY
}

PKG="$(read_json package)"
LEXER="$(read_json lexer)"
PARSER="$(read_json parser)"

OUT="$UNIT/out-java"
rm -rf "$OUT"
mkdir -p "$OUT"

eval "$(python3 - "$HARNESS_JSON" "$UNIT" <<'PY'
import json, sys
from pathlib import Path
h = json.load(open(sys.argv[1], encoding="utf-8"))
unit = Path(sys.argv[2])
lexer_file = h.get("lexer_file") or (h["lexer"] + ".gi")
parser_file = h.get("parser_file") or (h["parser"] + ".g")
kw = h.get("kwlexer")
if not kw:
    # Prefer <Lexer>KWLexer.gi, else stem-based GJavaLexer -> GJavaKWLexer
    cand = unit / (h["lexer"].replace("Lexer", "KWLexer") + ".gi")
    if not cand.is_file():
        stem = Path(lexer_file).stem  # e.g. GJavaLexer
        alt = unit / (stem.replace("Lexer", "KWLexer") + ".gi")
        cand = alt if alt.is_file() else cand
    kw = cand.name if cand.is_file() else ""
parser_template = h.get("parser_template") or "dtParserTemplateF.gi"
print(f"LEXER_FILE={lexer_file!r}")
print(f"PARSER_FILE={parser_file!r}")
print(f"KW={kw!r}")
print(f"PARSER_TEMPLATE={parser_template!r}")
PY
)"

gen() {
  local src="$1"
  local tpl="$2"
  echo "==> lpg $src"
  "$LPG_BIN" -programming_language=java -table -quiet \
    -include-directory="$INC_JAVA;$UNIT" \
    -template="$tpl" \
    -out_directory="$OUT" \
    "$UNIT/$src"
}

if [[ -n "${KW:-}" && -f "$UNIT/$KW" ]]; then
  gen "$KW" "$TPL_JAVA/KeywordTemplateF.gi"
fi
gen "$LEXER_FILE" "$TPL_JAVA/LexerTemplateF.gi"
gen "$PARSER_FILE" "$TPL_JAVA/$PARSER_TEMPLATE"

# Generated *exp.java may emit Java keywords as field names; drop if present
rm -f "$OUT"/*exp.java

# automatic_ast=none still emits Ast return types in dtParserTemplateF; stub if missing
if [[ ! -f "$OUT/Ast.java" ]]; then
  if compgen -G "$OUT/*Parser.java" >/dev/null && grep -q "public Ast parser" "$OUT"/*Parser.java 2>/dev/null; then
    echo "==> stub Ast.java for automatic_ast=none"
    cat > "$OUT/Ast.java" <<EOF
package ${PKG};
/** Stub for grammars with automatic_ast=none (template still references Ast). */
public class Ast {}
EOF
  fi
fi

echo "==> compile"
CLASSPATH="$RUNTIME_CLASSES:$OUT"
javac -encoding UTF-8 -cp "$CLASSPATH" -d "$OUT" "$OUT"/*.java "$SCRIPT_DIR/ParseDriver.java"

echo "==> parse examples"
FILES_FILE="$(mktemp)"
python3 - "$UNIT" "$HARNESS_JSON" "$FILES_FILE" <<'PY'
import json, sys
from pathlib import Path
unit = Path(sys.argv[1])
h = json.load(open(sys.argv[2], encoding="utf-8"))
out = Path(sys.argv[3])
globs = h.get("example_globs") or ["examples/**/*"]
files = []
for g in globs:
    files.extend(sorted(p for p in unit.glob(g) if p.is_file()))
seen = set()
lines = []
for p in files:
    if p.name.startswith(".") or "out-java" in p.parts:
        continue
    rp = str(p.resolve())
    if rp in seen:
        continue
    seen.add(rp)
    lines.append(str(p))
out.write_text("\n".join(lines) + ("\n" if lines else ""), encoding="utf-8")
print(len(lines))
PY
FILE_COUNT="$(wc -l < "$FILES_FILE" | tr -d ' ')"
if [[ ! -s "$FILES_FILE" ]]; then
  rm -f "$FILES_FILE"
  echo "no example files under $UNIT/examples" >&2
  exit 1
fi

fail=0
while IFS= read -r f; do
  [[ -z "$f" ]] && continue
  if ! java -cp "$CLASSPATH" ParseDriver "$PKG" "$LEXER" "$PARSER" "$f"; then
    fail=1
  fi
done < "$FILES_FILE"
rm -f "$FILES_FILE"

python3 - "$UNIT/status.json" "$ID" "$fail" "$FILE_COUNT" <<'PY'
import json, sys
from pathlib import Path
path = Path(sys.argv[1])
gid = sys.argv[2]
fail = int(sys.argv[3])
n = int(sys.argv[4])
data = {}
if path.is_file():
    data = json.loads(path.read_text(encoding="utf-8"))
data.update({
    "id": gid,
    "parse_ok": fail == 0,
    "example_count": n,
    "status": "ported" if fail == 0 else "failed",
    "blockers": [] if fail == 0 else list(dict.fromkeys((data.get("blockers") or []) + ["parse_examples_failed"])),
})
if "tier" not in data:
    data["tier"] = "A"
path.write_text(json.dumps(data, indent=2) + "\n", encoding="utf-8")
PY

if [[ "$fail" -ne 0 ]]; then
  echo "FAILED: $ID" >&2
  exit 1
fi
echo "OK: $ID ($FILE_COUNT examples)"
