# My GIT Notes Here

## Benging
1. mkdir foo
1. cd foo
1. git init .

or

1. git clone <repo>

## Basic flow of developer.
1. Write Code.
1. git add .
1. git commit


##Tips and Tricks

* git rebase -i => interactive re-basing.
* git mergetool => start tool to do merge process.
* git reset => move index to specified location.

...
git rebase -i HEAD~4
/* P, S, S, P */
...
     ||
     V
...
git reset HEAD~3
git add .
git commit -m ...
...

rebase on your feature branch.

git push origin :demo => delete remote branch
git branch -d -r origin/demo => not deleting ????

