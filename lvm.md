# PV - physical volume (disc); eg. /dev/sda
# VG - volume group; eg. vg0
# LV - logical volume; eg. root

# Create PV
pvcreate /dev/sda

# Display info about PV
pvdisplay /dev/sda

# Create VG
vgcreate vg0 /dev/sda

# Display info about VG
vgdispay vg0

# Add PV to VG, PV must be created before
vgextend vg0 /dev/sdb

# Remove PV from VG
pvmove /dev/sdb         # Move data from PV
vgreduce data /dev/sdb

# Deactivate VG, do this when you want to physically remove device
vgchange --activate n vg0

# Create LV
lvcreate --name root --size 8G vg0

# Extend LV size
lvextend --size 16G vg0/root

# Reduce LV size, FS must be resized first!
lvreduce --size 8G vg0/root

# Remove LV
lvremove vg0/root

# Create mirrored LV (RAID1)
lvcreate --name root --size 8G --mirrors 1 data vg0
# Mirror logs are stored on third device by default - if you don't have 3 or
# more devices in VG add '--mirrorlog core' to store logs in memory

# Enable mirroring on existing LV
lvconvert --mirrors 1 vg0/root

# Create stripped LV (RAID0)
lvcreate --name root --size 8G --stripes 2 --stripesize 4 vg0

#Exclusive Activation of a Volume Group in a Cluster
#Link --> https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/High_Availability_Add-On_Administration/s1-exclusiveactive-HAAA.html
1> vgs --noheadings -o vg_name
2> volume_list = [ "rhel_root", "rhel_home" ]
3> dracut -H -f /boot/initramfs-$(uname -r).img $(uname -r)
4> Reboot the node
5> uname -r to verify the correct initrd image
