#!/usr/bin/env bash
# Removes Closer: only the skill folders our installer marked as ours. Nothing you made with it is ever touched.
set -euo pipefail
MARKER=".closer-install"
COMMANDS="record-keeper prospector follow-up sales-coach contract-writer researcher scheduler pipeline proposal-writer win-back forecaster"   # written by scripts/sync.py from skill.json
removed=0
for base in closer bmac-closer; do
  for name in "$base" $(for s in $COMMANDS; do printf '%s-%s ' "$base" "$s"; done); do
    dir="$HOME/.claude/skills/$name"
    [ -e "$dir" ] || continue
    if [ -f "$dir/$MARKER" ]; then
      rm -rf "$dir"; removed=$((removed + 1))
    else
      printf 'Left %s alone: Closer did not install it.\n' "$dir"
    fi
  done
done
if [ "$removed" -gt 0 ]; then printf 'Removed Closer (%s skill folders).\n' "$removed"; else printf 'Closer was not installed.\n'; fi
