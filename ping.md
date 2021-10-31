---
tags: [ networking ]
---
# To ping <host> with 15 packets:
ping -c 15 <host>

# To ping <host> with 15 packets, one every .5 seconds:
ping -c 15 -i .5 <host>

# To test if a packet size of 1500 bytes is supported (to check the MTU for example):
ping -s 1500 -c 10 -M do <host>
