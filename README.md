# Git & GitHub Assignment

**Student:** Krishna Dhiman | **URN:** 2581153 | **Faculty:** Dr. Sangeeta | **Session:** 2026–2027

Hands-on practice of core Git workflows for the Version Control Systems course.

## Problem Statements

| # | Problem | Key Commands |
|---|---------|--------------|
| 1 | Identify a Specific Commit | `git log --oneline`, `git show <hash>`, `git log --grep` |
| 2 | Restore a Deleted File | `git status`, `git restore <file>`, `git log --diff-filter=D` |

## Repository Structure

```
.
├── README.md
├── .gitignore
├── GIT-identify-commit/
│   ├── steps.md          # procedure + expected output
│   └── demo.sh           # reproduces the exercise
└── GIT-restore-deleted-file/
    ├── steps.md
    └── demo.sh
```

## Procedure (Short)

### 1. Identify a Specific Commit
1. `git log --oneline` – list commits with short hashes
2. `git log --grep="keyword"` – find a commit by message
3. `git show <hash>` – inspect author, date, and changes
4. Verify the hash matches the one in the log

### 2. Restore a Deleted File
1. Delete the file: `rm notes.txt`
2. `git status` – shows `deleted: notes.txt`
3. `git restore notes.txt` – brings it back
4. If the deletion was already committed:
   `git log --diff-filter=D -- notes.txt` → find the deleting commit, then
   `git restore --source=<hash>^ notes.txt`
5. `git status` – confirm working tree is clean

## Run the Demos

```bash
bash GIT-identify-commit/demo.sh
bash GIT-restore-deleted-file/demo.sh
```
Each script builds a throwaway repo in a temp folder, so your own repo is not touched.

## Learning Outcome
Learned to locate any point in project history and recover lost files safely without rewriting history.
