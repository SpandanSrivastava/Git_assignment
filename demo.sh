#!/usr/bin/env bash
set -e
d=$(mktemp -d) && cd "$d" && git init -q
git config user.name "Demo" && git config user.email "demo@example.com"
echo "v1" > app.py && git add . && git commit -qm "First commit"
echo "v2" >> app.py && git commit -qam "Added feature"
echo "v3" >> app.py && git commit -qam "Fixed bug"
echo "--- git log --oneline"; git log --oneline
echo "--- git log --grep=feature"; git log --oneline --grep="feature"
h=$(git log --grep="feature" --format=%h)
echo "--- git show $h"; git show "$h"
