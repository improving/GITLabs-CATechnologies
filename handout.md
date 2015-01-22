# Git

Git is a powerful, sophisticated system for distributed version control. This gives a quick introduction to git features to allow developers to follow a new and liberating approach to source code management

## Setup
Before we begin, ensure that following are installed

1. Download git and install from git-scm.com
1. Merge tool for use with git. In our case, we will go with p4merge visual merge tool (http://www.perforce.com/downloads/Perforce/20-User?qt-perforce_downloads_step_3=1#product-10)
1. AtomVCS (atom.io)


## Configuration

Once the git is installed, set the user email address and the user name
* git config -user.email <email_address>
* git config -user.name <user_name>


## Creating a new repository

Create a new directory, go to teh newly created directory and perform init.

mkdir deleteme
cd deleteme/
git init
