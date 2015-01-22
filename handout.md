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
1. git merge branch
2. git rebase branch


##This is the Git notes from the 2-day training session at ImprovingEnterprises on Jan 21-22, 2015.


## Command Line Cheat Sheet
Verify Git installation
```
git --version
```
Get help with Git
```
git help
```
### Working Locally
Start git at a folder
```
git init
```

### Working with Remote Repos

## Discussions
GIT-SCM.com
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
        userid: sakhtar01
        password: Uzma0101

        https://github.com/improvingenterprises/GITLabs-CATechnologie
        Installing GIT - http://git-scm.com -  http://git-scm.com/download/win

        Go to https://atom.io/ and download Atom - click on download windows installer
