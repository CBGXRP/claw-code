#!/bin/bash
# Pre-commit hook — runs automated checks before allowing a commit
# Place in .claude/hooks/ and reference from settings.json

set -e

echo "🛡️ Running pre-commit checks..."

# Check 1: No hardcoded secrets
if git diff --cached | grep -iE '(api_key|secret|password|token)\s*=\s*["'"'"'][^"'"'"']+["'"'"']'; then
  echo "❌ FAIL: Hardcoded secret detected. Use environment variables instead."
  exit 1
fi

# Check 2: No debug statements left in code
if git diff --cached | grep -iE '(console\.log|print\(|debugger|breakpoint)'; then
  echo "❌ FAIL: Debug statements found. Remove before committing."
  exit 1
fi

# Check 3: File size limit (no files over 800 lines)
for file in $(git diff --cached --name-only); do
  if [ -f "$file" ]; then
    lines=$(wc -l < "$file")
    if [ "$lines" -gt 800 ]; then
      echo "❌ FAIL: $file has $lines lines (max 800). Refactor first."
      exit 1
    fi
  fi
done

echo "✅ All pre-commit checks passed."
