#!/usr/bin/env bash
set -e
d=$(mktemp -d) && cd "$d" && git init -q
git config user.name "Demo" && git config user.email "demo@example.com"
echo "important" > notes.txt && git add . && git commit -qm "Add notes"
echo "== Case A: uncommitted deletion"
rm notes.txt && git status -s
git restore notes.txt && git status
echo "== Case B: committed deletion"
git rm -q notes.txt && git commit -qm "Delete notes"
h=$(git log --diff-filter=D --format=%h -- notes.txt)
echo "Deleted in: $h"
git restore --source="$h^" notes.txt
git status -s && cat notes.txt
