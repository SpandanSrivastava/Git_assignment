# Identify a Specific Commit

**Objective:** Locate one commit in history and inspect exactly what it changed.

| Command | Purpose |
|---------|---------|
| `git log --oneline` | Condensed history with short hashes |
| `git log --grep="text"` | Find commit by message keyword |
| `git log -- <file>` | Commits that touched a file |
| `git show <hash>` | Full details + diff of one commit |

## Steps
1. `git log --oneline`
2. Pick the target hash (e.g. `c8b9307`)
3. `git show c8b9307`
4. Confirm author, date, message and diff

## Expected Output (sample)
```
$ git log --oneline
7769265 (HEAD -> master, origin/master) Made some changes
c8b9307 Added new file
f7e5bf4 First commit

$ git show c8b9307
commit c8b9307...
Author: ...
    Added new file
```

**Outcome:** A short hash is enough to uniquely identify and inspect any commit.
