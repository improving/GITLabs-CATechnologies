# Git Notes
This is the Git notes from the 2-day training session at ImprovingEnterprises on Jan 21-22, 2015.
## Git Overview

### Git Simple Cycle

1. Write Code
  * Changes to files are stored in the local directory
1. `git add .`
  * Changes are noted in the index area
1. `git commit -m "meaningful comment"`
  * Changes are committed to the local repository
1. Repeat as often as you need

Variation on commit step:
`git commit -am "meaningful comment"`
* This will automatically "add" all previously tracked files to the repository.  Currently untracked [new] files still need to be added with `git add .`.

### Overview of the Main Git Structures

```
DIR          INDEX        REPO         REMOTE
--------     --------     --------     --------
] WRITE
] CODE

  --> add . -] (moves to index)

             --> commit --] (moves to repo)

                          --> push ----] (moves to remote)
```

## Command Line Cheat Sheet
Verify Git installation
```
git --version
```
Get help with Git
```
git help
```
Show Aliases
```
git alias
```
Show all branches in repo
```
git branch
```
Show status of repo
```
git status
```
Discard changes made to a specific file and restore it
```
git checkout -- filename
```
Delete a branch from a repo
```
git branch -D branchName
```
### Working Locally
Start git at a folder
```
git init
```

### Working with Remote Repos

### Stupid GIT Tricks
Get rid of trash files all in one go
```
git add .
git reset --hard HEAD
```

### Quirky Git Stuff
* You can't add an empty directory.

### Commands not to use
Do not invoke garbage collection
```
git gc
```
Do not prune orphaned nodes
```
git prune
```
Do not rebase nodes that have been pushed
```
git rebase -i <commitish>..<commitish>
```
## Discussions
