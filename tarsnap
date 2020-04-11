---
tags: [ compression ]
---
# Perform a backup of two directories
tarsnap -c -f <archive-name> /usr/home /other/stuff/to/backup

# Print how much data would be uploaded
tarsnap -c -f <archive-name> --dry-run --print-stats <directories...>

# Copy an archive (only accesses metadata)
tarsnap -c -f <target-archive-name> @@<source-archive>

# List the archives
tarsnap --list-archives

# Delete an archive
tarsnap -d -f <archive-name>

# List the files in an archive
tarsnap -tv -f <archive-name>

# Restore two users' home directories from an archive (use no leading slashes)
tarsnap -x -f <archive-name> usr/home/alice usr/home/bob
