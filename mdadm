# For the sake of briefness, we use Bash  "group compound" stanza:
#   /dev/sd{a,b,...}1 => /dev/sda1 /dev/sdb1 ...
# Along the following variables:
#   ${M} array identifier (/dev/md${M})
#   ${D} device identifier (/dev/sd${D})
#   ${P} partition identifier (/dev/sd${D}${P})

# To create (initialize) a new array:
mdadm --create /dev/md${M} --level=raid5 --raid-devices=4 /dev/sd{a,b,c,d,e}${P} --spare-devices=/dev/sdf1

# To manually assemble (activate) an existing array:
mdadm --assemble /dev/md${M} /dev/sd{a,b,c,d,e}${P}

# To automatically assemble (activate) all existing arrays:
mdadm --assemble --scan

# To stop an assembled (active) array:
mdadm --stop /dev/md${M}

# To see array configuration:
mdadm --query /dev/md${M}

# To see array component configuration (dump superblock content):
mdadm --query --examine /dev/sd${D}${P}

# To see detailed array confiration/status:
mdadm --detail /dev/md${M}

# To save existing arrays configuration:
# (MAY be required by initrd for successfull boot)
mdadm --detail --scan > /etc/mdadm/mdadm.conf

# To erase array component superblock:
# (MUST do before reusing a partition for other purposes)
mdadm --zero-superblock /dev/sd${D}${P}

# To manually mark a component as failed:
# (SHOULD when a device shows wear-and-tear signs, e.g. through SMART)
mdadm --manage /dev/md${M} --fail /dev/sd${D}${P}

# To remove a failed component:
# (SHOULD before preemptively replacing a device, after failing it)
mdadm --manage /dev/md${M} --remove /dev/sd${D}${P}

# To prepare (format) a new device to replace a failed one:
sfdisk -d /dev/sd${D,sane} | sfdisk /dev/sd${D,new}

# To add new component to an existing array:
# (this will trigger the rebuild)
mdadm --manage /dev/md${M} --add /dev/sd${D,new}${P}

# To see assembled (active) arrays status:
cat /proc/mdstat

# To rename a device:
# (SHOULD after hostname change; eg. name="$(hostname -s)")
mdadm --assemble /dev/md${M} /dev/sd{a,b,c,d,e}${P} --name="${name}:${M}" --update=name
