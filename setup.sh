git config --global diff.tool p4merge
git config --global difftool.p4merge.cmd "p4merge.exe \$LOCAL \$REMOTE"
git config --global merge.tool p4merge
git config --global mergetool.p4merge.cmd "p4merge.exe \$BASE \$LOCAL \$REMOTE \$MERGED"
git config --global mergetool.p4merge.trustExitCode true
git config --global mergetool.p4merge.keepBackup false
