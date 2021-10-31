# To mount / partition as read-write in repair mode:
mount -o remount,rw /

# To bind mount path to a second location:
mount --bind <source> <destination>

# To mount Usb disk as user writable:
mount -o uid=username,gid=usergroup /dev/sdx /mnt/xxx

# To mount a remote NFS directory:
mount -t nfs <host>:<remote-dir> <local-dir>

# To mount an ISO:
mount -o loop disk1.iso /mnt/disk
