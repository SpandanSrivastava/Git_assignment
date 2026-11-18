# Restore a Deleted File

**Objective:** Recover a file that was deleted, whether or not the deletion was committed.

| Command | Purpose |
|---------|---------|
| `git status` | Shows `deleted:` files |
| `git restore <file>` | Restores file from last commit |
| `git log --diff-filter=D -- <file>` | Finds the commit that deleted it |
| `git restore --source=<hash>^ <file>` | Restores from before that commit |

## Case A – Deleted, not committed
1. `rm notes.txt`
2. `git status` → `deleted: notes.txt`
3. `git restore notes.txt`
4. `git status` → `nothing to commit, working tree clean`

## Case B – Deletion already committed
1. `git log --diff-filter=D --oneline -- notes.txt`
2. `git restore --source=<hash>^ notes.txt`
3. `git add notes.txt && git commit -m "Restore notes.txt"`

**Outcome:** Deleted files are never truly lost while they exist in history.
