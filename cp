# To copy a file:
cp ~/Desktop/foo.txt ~/Downloads/foo.txt

# To copy a directory:
cp -r ~/Desktop/cruise_pics/ ~/Pictures/

# To create a copy but ask to overwrite if the destination file already exists:
cp -i ~/Desktop/foo.txt ~/Documents/foo.txt

# To create a backup file with date:
cp foo.txt{,."$(date +%Y%m%d-%H%M%S)"}

# To copy a symlink that points to a directory (and is thus soft) and not
# 'expand' the symlink (aka, preserve its nature as a symlink):
# Note this does NOT work (note trailing '/'):  cp -P /path/to/symlink-dir/
cp -P <symlink-dir> <dest-dir>

# To copy sparsely:
cp --sparse=always <src> <dest>
