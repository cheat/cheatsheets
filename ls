# To display everything in <dir>, excluding hidden files:
ls <dir>

# To display everything in <dir>, including hidden files:
ls -a <dir>

# To display all files, along with the size (with unit suffixes) and timestamp:
ls -lh <dir>

# To display files, sorted by size:
ls -S <dir>

# To display directories only:
ls -d */ <dir>

# To display directories only, include hidden:
ls -d .*/ */ <dir>

# To display all files sorted by changed date, most recent first:
ls -ltc 

# To display files sorted by create time:
ls -lt

# To display files in a single column:
ls -1

# To show ACLs (MacOS):
# see also `cheat chmod` for `/bin/chmod` options for ACLs
/bin/ls -le

# To show all the subtree files (Recursive Mode):
ls -R
