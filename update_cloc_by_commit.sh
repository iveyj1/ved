#!/usr/bin/env bash
set -euo pipefail

out=${1:-cloc_by_commit.md}
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

{
  printf '### ved.py cloc by commit\n\n'
  printf 'Generated with `perl ~/Downloads/cloc-2.10.pl ved.py` against each commit version of `ved.py`.\n\n'
  printf '| Commit | Code | Blank | Comment | Subject |\n'
  printf '|---|---:|---:|---:|---|\n'

  for c in $(git rev-list --reverse --abbrev-commit HEAD); do
    if git show "$c:ved.py" > "$tmp/ved.py" 2>/dev/null; then
      stats=$(perl ~/Downloads/cloc-2.10.pl --quiet "$tmp/ved.py" \
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
