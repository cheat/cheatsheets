# To display process startup time:
systemd-analyze

# To display process startup time at service level:
systemd-analyze blame

# To list running units:
systemctl list-units

# To load a unit at startup:
systemctl enable foo.service

# To start or Stop a unit:
systemctl <start | stop> foo.service

# To unit file locations:
/etc/systemd/system
/usr/lib/systemd/system
