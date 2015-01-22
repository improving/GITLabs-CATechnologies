
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

### Working with Remote Repos
First we need to add a remote location.

```
git remote add <name> <url>
```


## Advanced topics
### Removing unwanted directories permanently

```
git filter-branch --tree-filter 'rm -rf lib' HEAD
```

This is is if you want to completely remove any trace of the diretory `lib` from your repository.



## Discussions
