# To list all IPv4 network files:
sudo lsof -i4

# To list all IPv6 network files:
sudo lsof -i6

# To list all open sockets:
lsof -i

# To list all listening ports:
lsof -Pnl +M -i4

# To find which program is using the port 80:
lsof -i TCP:80

# To list all connections to a specific host:
lsof -i@192.168.1.5

# To list all processes accessing a particular file/directory:
lsof <path>

# To list all files open for a particular user:
lsof -u <username>

# To list all files/network connections a command is using:
lsof -c <command>

# To list all files a process has open:
lsof -p <pid>

# To list all files open mounted at /mount/point:
# (Particularly useful for finding which process(es) are using a mounted USB stick or CD/DVD.)
lsof +f -- <mount-point>
