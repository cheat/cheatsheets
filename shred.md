# To shred a file (5 passes) and verbose output:
shred -n 5 -v <file>

# To shred a file (5 passes) and a final overwrite of zeroes:
shred -n 5 -vz <file>

# To do the above, and then truncate and rm the file:
shred -n 5 -vzu <file>

# To shred a partition:
shred -n 5 -vz /dev/sda

# Remember that shred may not behave as expected on journaled file systems if file data is being journaled.
