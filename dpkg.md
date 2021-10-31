---
tags: [ packaging ]
---
# To install or upgrade a package:
dpkg -i <deb-file>

# To remove a package (including configuration files):
dpkg -P <deb-file>

# To list all installed packages with versions and details:
dpkg -l

# To determine whether a Debian package is installed:
dpkg -s <deb-file> | grep Status
