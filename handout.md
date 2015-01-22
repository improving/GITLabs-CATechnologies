# My Notes Here
git log
git log --oneline
git add.
git commig -m
git reflog
git rebase <commit hash>
git rebase -i <commit hash>
git rebase -i  HEAD~<number of commits to go back>
gitk
git lga
git RESET HEAD~ SO
git reset--hard HEAD --> permanently destroys your uncommitted work. Uncommitted also means unrecoverable

By default, git clones only the 'master' repository

The best 'UNDO' strategy in GIT is to create a branch. If you are happy, you can replicate the change on your original branch; either ways, you can always drop/delte the branch since branches are cheap.

Preferably, use the command line to work with git rather than the GUI.


<u>Always remember</u>
Once pushed, do not rebase interactive - this will cause a LOT OF PAIN TO EVERYONE !!!

How to revert a commit :- git revert HEAD
git revert <hash code of the commit>
