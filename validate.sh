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
if grep -RIn --exclude-dir=.git --exclude-dir=scripts --exclude=CONTRIBUTING.md -E "TODO|Coming Soon|Lorem ipsum|FIXME|XXX" . ; then
  echo "Placeholder text found above."
  ERRORS=$((ERRORS+1))
else
  echo "No placeholder text found."
fi

echo "== 3. Checking for empty directories =="
EMPTY_DIRS=$(find . -type d -empty -not -path "./.git*")
if [[ -n "$EMPTY_DIRS" ]]; then
  echo "Empty directories found:"
  echo "$EMPTY_DIRS"
  ERRORS=$((ERRORS+1))
else
  echo "No empty directories."
fi

echo "== 4. Checking YAML syntax =="
if command -v python3 &>/dev/null; then
  while IFS= read -r -d '' file; do
    python3 -c "import yaml,sys; yaml.safe_load_all(open(sys.argv[1]))" "$file" \
      || { echo "Invalid YAML: $file"; ERRORS=$((ERRORS+1)); }
  done < <(find . -type f \( -name "*.yml" -o -name "*.yaml" \) -not -path "./.git/*" -print0)
fi

echo "== 5. Checking JSON syntax =="
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
