# To remove all files and subdirs in <dir>:
rm -rf <dir>

# To ignore non-existent files:
rm -f <dir>

# To remove a file with this inode:
find /tmp/ -inum 6666 -exec rm -i '{}' \;
