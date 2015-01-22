
# Git

Git is a powerful, sophisticated system for distributed version control. This gives a quick introduction to git features to allow developers to follow a new and liberating approach to source code management

## Git Overview

### Setup
Before we begin, ensure that following are installed

1. Download git and install from git-scm.com
1. Merge tool for use with git. In our case, we will go with p4merge visual merge tool (http://www.perforce.com/downloads/Perforce/20-User?qt-perforce_downloads_step_3=1#product-10)

    ##### Configure P4Merge
    * git config --global diff.tool p4merge
    * git config --global difftool.p4merge.cmd "p4merge.exe \$LOCAL \$REMOTE"
    * git config --global merge.tool p4merge
    * git config --global mergetool.p4merge.cmd "p4merge.exe \$BASE \$LOCAL \$REMOTE \$MERGED"
    * git config --global mergetool.p4merge.trustExitCode true
    * git config --global mergetool.p4merge.keepBackup false

1. AtomVCS editor can be downloaded from atom.io


### Git Configuration

Once the git is installed, set the user email address and the user name

```
git config -user.email <email_address>
git config -user.name <user_name>
```

### Creating a new repository

Create a new directory, go to the newly created directory and do git init.

```
$mkdir demo
$cd demo/
$ git init
     Initialized empty Git repository in c:/source/demo/.git/
```
This will create a local master and all your current will be in the 'master'


### Working with branches

By default once the repository is created, you will automatically work in the "master" branch.
Recommendation is that any work should be carried out in a different branch (for ex: working, feature etc)

Creating a branch automatically switches the working branch to the new created branch (-b option creates a new branch)

```
  $ git checkout -b working
     Switched to a new branch 'working'
```
Now to add a file to the repository

   * Create a file
   * Add it to index (git add .)
   * To check the status of the files under your repository (git status).
   * Commit the file(s) to the local repository (git commit -m <comment>)

### Merging branches
Merging is Git's way of putting back together again a forked history. The git merge command lets you take the commits from one git branch and integrate them into a single branch.
Following command merge into the current branch. The current branch will be updated to reflect the merge, but the target branch will be completely unaffected.

```
git merge <branch>
```

### Deleting branches

```
git branch -d for deleting the obsolete target branch

```
### Clone a repository

It is possible to clone local repository or a remote one.

To clone a remote repository:

```
git clone https://github.com/<username>/<repositoryname>.git [<target_directory>]
```

By default it would create a directory named "repositoryname", if target is not specified.

To clone a local repository:

```
cd <parent_folder_of_the_repository_to_be_cloned>
git clone <repo>/.git <cloned_repo>
```


### WorkFlow

Local repository
Index
Final source of truth




### Command Line Cheat Sheet
Verify Git installation
```
git --version
```
Get help with Git
```
git help
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

Working with Remote Repos
First we need to add a remote location.

```
git remote add <name> <url>
```
View the logs for the current branch

```
git reflog
```
Cleaning all temporary and unwanted files not in the repository

```
git add . && git reset --hard HEAD
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
