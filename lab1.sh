#!/bin/bash

rm -rf ./lab1
mkdir ./lab1
cd ./lab1

# Setup one commit on master
touch README
git add .
git commit -am "First Commit"

# branch to working
git checkout -b working

# do work & commit
touch file1.txt
git add .
git commit -am "working commit1"
touch file2.txt
git add .
git commit -am "working commit2"
touch file3.txt
git add .
git commit -am "working commit3"

# back to master
git checkout master

# branch to feature
git checkout -b feature

# do work & commit
echo "Hello World" > file1.txt
git add .
git commit -am "bugfix commit1"
echo "Hello World" > file2.txt
git add .
git commit -am "bugfix commit2"
echo "Hello World" > file3.txt
git add .
git commit -am "bugfix commit3"

# back to master
git checkout master

clear
