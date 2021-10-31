# To actively follow log (like tail -f):
journalctl -f

# To display all errors since last boot:
journalctl -b -p err

# To filter by time period:
journalctl --since=2012-10-15 --until="2011-10-16 23:59:59"

# To show list of systemd units logged in journal:
journalctl -F _SYSTEMD_UNIT

# To filter by specific unit:
journalctl -u dbus

# To filter by executable name:
journalctl /usr/bin/dbus-daemon

# To filter by PID:
journalctl _PID=123

# To filter by Command, e.g., sshd:
journalctl _COMM=sshd

# To filter by Command and time period:
journalctl _COMM=crond --since '10:00' --until '11:00'

# To list all available boots:
journalctl --list-boots

# To filter by specific User ID e.g., user id 1000:
journalctl _UID=1000

# To display the current disk usage of all journal files:
journalctl --disk-usage
