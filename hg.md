---
tags: [ vcs ]
---
# To clone a directory:
hg clone

# To add files to hg tracker:
hg add <file>

# To add all files in <dir> to hg tracker:
hg add <dir>

# To create a commit with all tracked changes and a message:
hg commit -m <message>

# To push commits to source repository:
hg push

# To pull changes from source repository:
hg pull

# To rebase local commits to disambiguate with remote repository:
hg pull --rebase
