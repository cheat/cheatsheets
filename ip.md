---
tags: [ networking ]
---
# To display all interfaces with addresses:
ip addr

# To take down / up the wireless adapter:
ip link set dev wlan0 {up|down}

# To set a static IP and netmask:
ip addr add 192.168.1.100/32 dev eth0

# To remove a IP from an interface:
ip addr del 192.168.1.100/32 dev eth0

# To remove all IPs from an interface:
ip address flush dev eth0

# To display all routes:
ip route

# To display all routes for IPv6:
ip -6 route

# To add default route via gateway IP:
ip route add default via 192.168.1.1

# To add route via interface:
ip route add 192.168.0.0/24 dev eth0

# To get the route used for an destination
ip route get to 8.8.8.8

# To change your mac address :
ip link set dev eth0 address aa:bb:cc:dd:ee:ff

# To view neighbors (using ARP and NDP):
ip neighbor show
