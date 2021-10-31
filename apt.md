---
tags: [ packaging ]
---
# To find packages matching <phrase>:
apt search <phrase>

# To show information on a package:
apt show <package>

# To fetch package list:
apt update

# To download and install the updates and (UNLIKE apt-get) install new necessary packages:
apt upgrade

# To download and install the updates AND install new necessary packages
# AND remove packages that stand in the way of the upgrade - use with caution!
apt dist-upgrade

# To perform a full system upgrade:
apt update && apt upgrade # use dist-upgrade carefully if needed

# To install package(s):
apt install <package>...

# To uninstall package(s):
apt remove <package>...
