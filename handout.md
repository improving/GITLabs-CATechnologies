#GIT Notes
##This is the Git notes from the 1-day training session at ImprovingEnterprises on Jan 21-22, 2015.

## Git Overview
### What is GIT?
* GIT is DVCS (distributed version control).
* GIT is File system based version control.

###Supported features vs other version control systems

1. Commit - YES
2. Merge  - NO
3. Diff   - NO
4. Edit	  - NO

####Common Practice to be followed

1. Write Code
2. Add `git add .`
3. Commit `git commit -m "msg"`
####Don't use or use with caution

1. `git gc`
2. `git prune`

####Git Internal

When you run `git init` in a new or existing directory, Git creates the .git directory and initializes GIT,
which is where almost everything that Git stores and manipulates is located.

1. Repository --> .git directory
2. Index --> information about staging area

###Merge and rebase model
1. git merge feature
2. git rebase
1. git merge branch
2. git rebase branch


##This is the Git notes from the 2-day training session at ImprovingEnterprises on Jan 21-22, 2015.

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
## Start (on set-up)
get products:  git-scm, Atom.io, p4merge
(install GIT 2.2.2 or later)

right-click a directory for 'home base'
select "GIT base"
type 'git init' (first time only)  

default text editor is VI (think UNIX)

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

General work cycle
* Write code
* . add
* commit

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
  type 'git init' (first time only)
  git -scm will determine IDE (install 2.2.2 or later)

    get products:  Atom.io, p4merge

  default text editor is VI (think UNIX)
### Working Locally

General work cycle
      * Write code
      * . add
      * commit

##General

To see prior history 'git history'




### Working with Remote Repos
First we need to add a remote location.

```
git remote add <name> <url>
```



To remove a remote location:

...
git remote rm <name>
...

Note: 'origin' is commonly used for 'source of truth', can reference any other url

To download a copy of an exiting repository:
git clone origin

### Network commands

**PULL    read only
**PUSH    read/write
**FETCH   read only (included in PULL and CLONE, rarely used alone)
**CLONE   downloads a copy of an existing repository


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

### Cleaning generated files
Removing files that were recently created that you do not want to ever commit.
This is done in two steps:
```
git add .
git reset --hard HEAD
```


## Discussions

Set up a github account.  Can be free account with name/password.  Good place for offsite backup of work, apart from where our 'source of truth' will be.

Remember git (like UNIX) is case-sensitive.


#Best Practices
Work from a **working** or **feature** branch, not **master**

Use 'git status' frequently to be sure where you are, what needs to be committed or removed (like .origin files)

Use 'git config' if you need to change some of your configuration.  


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

# Important GIT commands

    git status // gives you all the status
    git history // shows the history of git commands
    git add . //add changes for staging area(index)
    git alias // create alias for commands
    git push origin localbranchname:newremotebranchname // I want to move this to some other branch and rename it
    git checkout branch // checkout that branch
    git lga --graphical display of branches
    git mergetool  // brings up the git merge tool
    git rebase --continue (rebase continue)
    git commit --amend
    git push origin :remotebranchname   // delete a remote branch - This is how you delete from your source of truth. Leave the localbranchname empty
    git clone <url /dir of the remote repo> localrepositoryname // clone a branch
    git rebase branchname
    git branch -D working // delete branch from local repo
    git push -u origin branchname
    git init // initializes git directory
    git config --global user.email "syed.akhtar@ca.com"
    git config --global user.name "Syed Akhtar"
    git commit -m  "first commit"
    git checkout -b branchname // creating new branch
    git add -A . // Commit the files are actually deleted
    git log working
    git log master
    . setup.sh
    atom .
    git c working
    git merge feature
    git reset HEAD~1
    git status
    git lga
    git reflog
    git reset HEAD~1
    git reset --hard HEAD~1

    ## GIT Information and Administration

    https://github.com/
    https://github.com/improvingenterprises/GITLabs-CATechnologie
    http://git-scm.com
    http://git-scm.com/download/win
    https://atom.io/
