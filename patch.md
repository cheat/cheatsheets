# To patch one file:
patch <file> < <patch-file>

# To reverse a patch:
patch -R <file> < <patch-file>

# To patch all files in a directory, adding any missing new files:
# -p strips leading slashes
$ cd dir
$ patch -p1 -i <dir> <patch-file>

# To patch files in a directory, with one level (/) offset:
patch -p1 -r <dir> < <patch-file>
