# To display everything in "<path/to/directory>", excluding hidden files:
ls "<path/to/directory>"

# To display everything in "<path/to/directory>", including hidden files:
ls -a "<path/to/directory>"

# To display all files, along with the size (with unit suffixes) and timestamp:
ls -lh "<path/to/directory>"

# To display files, sorted by size:
ls -S "<path/to/directory>"

# To display directories only:
ls -d */ "<path/to/directory>"

# To display directories only, include hidden:
ls -d .*/ */ "<path/to/directory>"

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
