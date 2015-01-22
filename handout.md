# Git

Git is a powerful, sophisticated system for distributed version control. This gives a quick introduction to git features to allow developers to follow a new and liberating approach to source code management

## Git Overview

### Setup
Before we begin, ensure that following are installed

1. Download git and install from git-scm.com
1. Merge tool for use with git. In our case, we will go with p4merge visual merge tool (http://www.perforce.com/downloads/Perforce/20-User?qt-perforce_downloads_step_3=1#product-10)

    ##### Configure P4Merge
    git config --global diff.tool p4merge
    git config --global difftool.p4merge.cmd "p4merge.exe \$LOCAL \$REMOTE"
    git config --global merge.tool p4merge
    git config --global mergetool.p4merge.cmd "p4merge.exe \$BASE \$LOCAL \$REMOTE \$MERGED"
    git config --global mergetool.p4merge.trustExitCode true
    git config --global mergetool.p4merge.keepBackup false

1. AtomVCS editor can be downloaded from atom.io


### Git Configuration

Once the git is installed, set the user email address and the user name
  * git config -user.email <email_address>
  * git config -user.name <user_name>

## Aliases

Git allows you define your own aliases to make your life easier

### Bare minimum aliases
*   git config --global alias.a 'add -A'
*   git config --global alias.b 'branch'
*   git config --global alias.c 'checkout'
*   git config --global alias.cb 'checkout -b'
*   git config --global alias.pr 'pull --rebase'
*   git config --global alias.pom 'push origin master'
*   git config --global alias.rc 'rebase --continue'
*   git config --global alias.ra 'rebase --abort'
*   git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
*   git config --global alias.lga "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"
*   git config --global alias.aliases "config --get-regexp alias"

#### Colorization
*   git config --global color.branch "auto"
*   git config --global color.diff "auto"
*   git config --global color.status "auto"
*   git config --global color.branch.current "yellow reverse"
*   git config --global color.branch.local "yellow"
*   git config --global color.branch.remote "green"
*   git config --global color.diff.meta "yellow bold"
*   git config --global color.diff.frag "magenta bold"
*   git config --global color.diff.old "red bold"
*   git config --global color.diff.new "green bold"
*   git config --global color.status.added "yellow"
*   git config --global color.status.changed "green"
*   git config --global color.status.untracked "cyan"



### Creating a new repository

Create a new directory, go to teh newly created directory and do git init.

*   $ mkdir demo
*   $ cd demo/
*   $ git init
*     Initialized empty Git repository in c:/source/demo/.git/

This will create a local master and all your current will be in the 'master'


### Working with branches

By default once the repository is created, you will automatically work in the "master" branch.
Recommendation is that any work should be carried out in a different branch (for ex: working, feature etc)

Creating a branch automatically switches the working branch to the new created branch (-b option creates a new branch)

  * $ git checkout -b working
  *   Switched to a new branch 'working'

Now to add a file to the repository

   * Create a file
   * Add it to index (git add .)
   * To check the status of the files under your repository (git status).
   * Commit the file(s) to the local repository (git commit -m <comment>)

## Clone a repository


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

### Working with Remote Repos

## Discussions
