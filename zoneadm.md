# To halt a zone:
zoneadm -z <zone> halt

# To delete a zone :
zoneadm -z <zone> halt
zoneadm -z <zone> uninstall

# To verify a zone:
zoneadm -z <zone> verify

# To install a zone:
zoneadm -z <zone> install

# To boot a zone:
zoneadm -z <zone> boot

# To reboot a zone:
zoneadm -z <zone> reboot

# To list zones:
zoneadm list -cv
