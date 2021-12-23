# Get ACL
getfacl <file>

# Add or modify ACL on file
setfacl -m u:username:rX <file>
setfacl -m g:groupname:rw <file>
setfacl -m o::- <file>

# or provide all permissions at once
setfacl -m u::rwx,g:groupname:rX,o::- <file>

# Copy ACL from file-A to file-B
getfacl file-A | setfacl -M - file-B

# Apply ACL recursivelly to directory
setfacl -R -m u:username:rX <directory>

# Delete ACL
setfacl -x u:username,g:groupname <file>

# Delete all ACL on file, including default
setfacl -b <file>

# Same operations works for default ACLs
setfacl -m d:u:username:rx <directory>
setfacl -x d:u:username <directory>

# Delete only default ACLs
setfacl -k <directory>
