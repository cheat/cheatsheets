---
tags: [ networking ]
---
# To open a TCP connection from <src-port> to <dest-port> of <dest-host>, with a timeout of <seconds>
nc -p <src-port> -w <seconds> <dest-host> <dest-port>

# To open a UDP connection to <dest-port> of <dest-host>:
nc -u <dest-host> <dest-port>

# To open a TCP connection to port 42 of <host> using <source-host> as the IP for the local end of the connection:
nc -s <source-host> <dest-host> <port>

# To create and listen on a UNIX-domain stream socket:
nc -lU /var/tmp/dsocket

# To connect to <dest-port> of <dest-host> via an HTTP proxy at <proxy-host>,
# <proxy-port>. This example could also be used by ssh(1); see the ProxyCommand
# directive in ssh_config(5) for more information.
nc -x<proxy-host>:<proxy-port> -Xconnect <dest-host> <dest-port>

# The same example again, this time enabling proxy authentication with username "ruser" if the proxy requires it:
nc -x<proxy-host>:<proxy-port> -Xconnect -Pruser <host> <port>

# To choose the source IP for the testing using the -s option
nc -zv -s source_IP target_IP Port
