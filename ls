# To display everything in <dir>, excluding hidden files:
ls <dir>

# To display everything in <dir>, including hidden files:
ls -a <dir>

# To display all files, along with the size (with unit suffixes) and timestamp
ls -lh <dir>

# To display files, sorted by size:
ls -S <dir>

# To display directories only:
ls -d */ <dir>

# To display directories only, include hidden:
ls -d .*/ */ <dir>

# To display all files sorted by changed date, most recent first
ls -ltc 
# or by more recent create time
ls -lt

# single column
ls -1

# to show ACLs (MacOS) 
/bin/ls -le
