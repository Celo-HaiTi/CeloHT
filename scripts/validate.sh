#!/usr/bin/env bash
# Validation script for the CeloHT repository.
# Checks structure, Markdown/YAML/JSON syntax, and the absence of
# placeholder text or broken references.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

ERRORS=0

echo "== 1. Checking required community files =="
REQUIRED_FILES=(
  "README.md" "LICENSE" "CODE_OF_CONDUCT.md" "CONTRIBUTING.md" "SECURITY.md"
  "SUPPORT.md" "GOVERNANCE.md" "CHANGELOG.md" "ROADMAP.md" "AUTHORS.md"
  "NOTICE" "CODEOWNERS" "CITATION.cff"
)
for f in "${REQUIRED_FILES[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo "MISSING: $f"
    ERRORS=$((ERRORS+1))
  fi
done

echo "== 2. Checking for placeholder text =="
if grep -RIn --exclude-dir=.git --exclude-dir=scripts --exclude=CONTRIBUTING.md --exclude=validate.sh -E "TODO|Coming Soon|Lorem ipsum|FIXME|XXX" . ; then
  echo "Placeholder text found above."
  ERRORS=$((ERRORS+1))
else
  echo "No placeholder text found."
fi

echo "== 3. Checking for prohibited terminology and identity regressions =="
BANNED_TERM_1=$(printf '%s' 'leg' 'acy')
BANNED_TERM_2=$(printf '%s' 'c' 'USD')
BANNED_TERM_3=$(printf '%s' 'Celo-' 'HT')
PATTERN="${BANNED_TERM_1}|${BANNED_TERM_2}|${BANNED_TERM_3}"
PROHIBITED_TERM_MATCHES=$(grep -RIn --exclude-dir=.git --exclude-dir=scripts --exclude=CONTRIBUTING.md --exclude=validate.sh -E "$PATTERN" . || true)
if [[ -n "$PROHIBITED_TERM_MATCHES" ]]; then
  echo "Prohibited terminology found in the editable corpus:"
  echo "$PROHIBITED_TERM_MATCHES"
  ERRORS=$((ERRORS+1))
else
  echo "No prohibited terminology found in the editable corpus."
fi

FILE_MATCH_1=$(find . -path './.git' -prune -o -iname "*${BANNED_TERM_1}*" -print)
FILE_MATCH_2=$(find . -path './.git' -prune -o -iname "*${BANNED_TERM_2}*" -print)
FILE_MATCH_3=$(find . -path './.git' -prune -o -iname "*${BANNED_TERM_3}*" -print)
if [[ -n "$FILE_MATCH_1" || -n "$FILE_MATCH_2" || -n "$FILE_MATCH_3" ]]; then
  echo "Prohibited terminology found in filenames or directories:"
  printf '%s\n' "$FILE_MATCH_1" "$FILE_MATCH_2" "$FILE_MATCH_3"
  ERRORS=$((ERRORS+1))
else
  echo "No prohibited terminology found in filenames or directories."
fi

echo "== 4. Checking for empty directories =="
EMPTY_DIRS=$(find . -type d -empty -not -path "./.git*")
if [[ -n "$EMPTY_DIRS" ]]; then
  echo "Empty directories found:"
  echo "$EMPTY_DIRS"
  ERRORS=$((ERRORS+1))
else
  echo "No empty directories."
fi

echo "== 5. Checking YAML syntax =="
if command -v python3 &>/dev/null; then
  while IFS= read -r -d '' file; do
    python3 -c "import yaml,sys; yaml.safe_load_all(open(sys.argv[1]))" "$file" \
      || { echo "Invalid YAML: $file"; ERRORS=$((ERRORS+1)); }
  done < <(find . -type f \( -name "*.yml" -o -name "*.yaml" \) -not -path "./.git/*" -print0)
fi

echo "== 6. Checking JSON syntax =="
while IFS= read -r -d '' file; do
  python3 -c "import json,sys; json.load(open(sys.argv[1]))" "$file" \
    || { echo "Invalid JSON: $file"; ERRORS=$((ERRORS+1)); }
done < <(find . -type f -name "*.json" -not -path "./.git/*" -print0)

echo "== Result =="
if [[ "$ERRORS" -gt 0 ]]; then
  echo "Validation failed with $ERRORS error(s)."
  exit 1
fi
echo "All validation checks passed."
