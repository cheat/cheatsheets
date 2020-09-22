---
tags: [ cryptography, hash, checksum, verification ]
---
# To compute hash (checksum) of <file>:
sha256sum <file>

# To compute hash (checksum) from input text:
# Enter text in keyboard and finish by ctrl-D at beginning of line
sha256sum
Some text
^D

echo -n "Hello World" | sha256sum

# To verify if a hash (checksum) is correct if a hash-file is provided:
# sha256sum will go thru the files listed in <file-with-list-of-checksums>.
# For each file it will look if it exists. If not, it will print an error.
# If it does exist it will compute the checksum and compare it with the hash 
# provided in the <file-with-list-of-checksums>. If they match (good!) it
# will print "filename: OK". 
# If they don't match (warning, you might have been hacked), it will 
# print "filename: FAILED".
sha256sum --check <file-with-list-of-checksums>

# Same as above (but ignore missing files):
# This tells you if your file is an exact copy (OK) or has been 
# tampered with (FAILED) without bothering you with warnings about
# missing files
sha256sum --check --ignore-missing <file-with-list-of-checksums>

