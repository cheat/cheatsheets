---
tags: [ packaging ]
---
# To fetch package list:
apt-get update

# To download and install package updates:
apt-get upgrade

# To download and install the updates AND install new necessary packages
# AND remove any packages that stand in the way of the upgrade:
apt-get dist-upgrade

# Full command:
apt-get update && apt-get dist-upgrade

# To install a new package(s):
apt-get install <package>...

# To download a package without installing it. (The package will be downloaded in your current working dir)
apt-get download <package>

# To change cache dir and archive dir (where .deb are stored):
apt-get -o Dir::Cache="/path/to/destination/dir/" -o Dir::Cache::archives="./" install ...

# To show apt-get installed packages:
grep 'install ' /var/log/dpkg.log

# To silently keep old configuration during batch updates:
apt-get update -o DPkg::Options::='--force-confold' ...
