
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
View history of commits to the repository
```
git reflog
```
Invoke a graphical representation of reflog
```
gitk
```
### Working Locally
Start git at a folder
```
git init
```

Checkout a branch
```
git checkout <branch_name>
```

Creating a new branch
```
git branch -b <new_branch_name>
```

Show all branches
```
git branch -a
```

Commit changes to local repository
```
git commit -m"commit_message"
```
Take off the most recent commit, but keep the changes
```
git reset HEAD
```
Take of the most recent *n* commits, but keep the changes
```
git reset HEAD~n
```
Take off the most recent *n* commits, and discard the changes
```
git reset --hard HEAD~n
```

### Working with Remote Repos
First we need to add a remote location.

```
git remote add <name> <url>
```
Create a remote branch
```
git push <remote> localBranch:remoteBranch
```
Delete a remote branch
```
git push <remote> :branchToDelete
```
## Advanced topics
### Ignoring files in your repository
To ignore specific files, you need to create a .gitignore by running
```
touch .gitignore
```

### Cleaning generated files
Removing files that were recently created that you do not want to ever commit.
This is done in two steps:
```
git add .
git reset --hard HEAD
```

### Removing unwanted directories permanently

```
git filter-branch --tree-filter 'rm -rf lib' HEAD
```
This command modifies every commit in the current branch, back to the root, and changes it by removing the lib folder. As such, it will modify the commitish for all of those commits, and hence likely change public history. This is a good command when preparing a migrated repository, but a bad idea in most other cases.



### Stupid GIT Tricks
Get rid of trash files all in one go
```
git add .
git reset --hard HEAD
```
Create an easy undo strategy
```
git checkout -b <undoBranch>
<some possibly dangerous actions>
git checkout <branch you want to keep>
git checkout -D <branch you don't want to keep>
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

## Tim's Aliases

### Simple Aliases

This is a list of all the simple aliases that Tim Rayburn (@TRayburn) keeps around to make his life easier, use what is useful to you, ignore the rest.

``` sh
# one letter shortcuts for the win
# --------------------------------

git config --global alias.a 'add -A'
git config --global alias.b 'branch'
git config --global alias.c 'checkout'
git config --global alias.cb 'checkout -b'
git config --global alias.f 'fetch'
git config --global alias.l 'log --pretty=oneline --abbrev-commit'
git config --global alias.r 'rebase --interactive HEAD~10'
git config --global alias.s '-p status'

# primary workflow related aliases
git config --global alias.pr 'pull --rebase'
git config --global alias.pom 'push origin master'
git config --global alias.rc 'rebase --continue'
git config --global alias.ra 'rebase --abort'
git config --global alias.ss '-p status -s'

# log related aliases
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.lga "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"
git config --global alias.ll "log --pretty=oneline --abbrev-commit --max-count=15"
git config --global alias.lc "log --stat --summary"

# Colorization
git config --global color.branch "auto"
git config --global color.diff "auto"
git config --global color.status "auto"
git config --global color.branch.current "yellow reverse"
git config --global color.branch.local "yellow"
git config --global color.branch.remote "green"
git config --global color.diff.meta "yellow bold"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.status.added "yellow"
git config --global color.status.changed "green"
git config --global color.status.untracked "cyan"

# Other inherited aliases
git config --global alias.prune "fetch --prune"
git config --global alias.aliases 'config --get-regexp alias'
git config --global alias.amend 'commit --amend'
git config --global alias.bl 'blame -w -M -C'
git config --global alias.bra 'branch -rav'
git config --global alias.branches 'branch -rav'
git config --global alias.changed 'status -sb'
git config --global alias.filelog 'log -u'
git config --global alias.hist "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue) [%an]%Creset' --abbrev-commit --date=relative"
git config --global alias.last 'log -p --max-count=1 --word-diff'
git config --global alias.lastref 'rev-parse --short HEAD'
git config --global alias.lasttag 'describe --tags --abbrev=0'
git config --global alias.pick 'add -p'
git config --global alias.remotes 'remote -v show'
git config --global alias.stage 'add'
git config --global alias.stats 'diff --stat'
git config --global alias.sync '! git fetch upstream -v && git fetch origin -v && git checkout master && git merge upstream/master'
git config --global alias.undo 'reset head~'
git config --global alias.unstage 'reset HEAD'
git config --global alias.wdiff 'diff --word-diff'
git config --global alias.who 'shortlog -s -e --'
```
