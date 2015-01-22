
# Git Notes
This is the Git notes from the 2-day training session at ImprovingEnterprises on Jan 21-22, 2015.
## Git Overview

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

### Working with Remote Repos
First we need to add a remote location.

```
git remote add <name> <url>
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

This is is if you want to completely remove any trace of the diretory `lib` from your repository.



## Discussions
