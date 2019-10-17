# To copy files from remote to local, maintaining file properties and sym-links
# (-a), zipping for faster transfer (-z), verbose (-v):
rsync -avz host:file1 :file1 /dest/
rsync -avz /source host:/dest

# To copy files using checksum (-c) rather than time to detect if the file has
# changed. (Useful for validating backups):
rsync -avc <src> <dest>

# To copy contents of /src/foo to destination:
# This command will create /dest/foo if it does not already exist
rsync -auv <src> <dest>

# To explicitly copy <src> to <dest>
rsync -auv <src> <dest>

# To copy file from local to remote over ssh with non standard port 1234 to
# destination folder in remoteuser's home directory:
rsync -avz -e "ssh -p1234" <source> <username>@<host>:<dest>
