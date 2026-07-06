#!/usr/bin/env bash
set -euo pipefail

out=${1:-cloc_by_commit.md}
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

{
  printf '### vig.py cloc by commit\n\n'
  printf 'Generated with `perl ~/Downloads/cloc-2.10.pl vig.py` against each commit version of `vig.py`.\n\n'
  printf '| Commit | Code | Blank | Comment | Subject |\n'
  printf '|---|---:|---:|---:|---|\n'

  for c in $(git rev-list --reverse --abbrev-commit HEAD); do
    if git show "$c:vig.py" > "$tmp/vig.py" 2>/dev/null; then
      stats=$(perl ~/Downloads/cloc-2.10.pl --quiet "$tmp/vig.py" \
        | awk '$1=="Python" {print $5"|"$3"|"$4}')
      code=${stats%%|*}
      rest=${stats#*|}
      blank=${rest%%|*}
      comment=${rest#*|}
      subj=$(git log -1 --format=%s "$c" | sed 's/|/\\|/g')
      printf '| `%s` | %s | %s | %s | %s |\n' "$c" "$code" "$blank" "$comment" "$subj"
    fi
  done
} > "$out"

printf 'Wrote %s\n' "$out"
