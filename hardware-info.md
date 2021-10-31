# To display all hardware details:
sudo lshw

# To list currently loaded kernel modules:
lsmod

# To list all available modules:
find /lib/modules/$(uname -r) -type f -iname "*.ko"

# To load a module:
modprobe <module>

# To remove a module:
modprobe -r <module>

# To list devices connected via pci bus:
lspci

# To debug output for pci devices (hex):
lspci -vvxxx

# To display cpu hardware stats:
cat /proc/cpuinfo

# To display memory hardware stats:
cat /proc/meminfo

# To output the kernel ring buffer:
dmesg

# Ouput kernel messages
dmesg --kernel
