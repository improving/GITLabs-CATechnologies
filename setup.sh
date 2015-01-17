# Configure P4Merge
git config --global diff.tool p4merge
git config --global difftool.p4merge.cmd "p4merge.exe \$LOCAL \$REMOTE"
git config --global merge.tool p4merge
git config --global mergetool.p4merge.cmd "p4merge.exe \$BASE \$LOCAL \$REMOTE \$MERGED"
git config --global mergetool.p4merge.trustExitCode true
git config --global mergetool.p4merge.keepBackup false

# Bare minimum aliases
git config --global alias.a 'add -A'
git config --global alias.b 'branch'
git config --global alias.c 'checkout'
git config --global alias.cb 'checkout -b'
git config --global alias.pr 'pull --rebase'
git config --global alias.pom 'push origin master'
git config --global alias.rc 'rebase --continue'
git config --global alias.ra 'rebase --abort'
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
git config --global alias.lga "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"

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
