---
tags: [ packaging ]
---
# To create a Slackware package from a structured directory and sub-tree:
cd <dir>
su - c 'makepkg --linkadd y --chown n $foo-1.0.3-x86_64-1_tag.tgz'

# To install a Slackware package:
installpkg foo-1.0.3-x86_64-1.tgz

# To install a Slackware package to non-standard location:
ROOT=/path/to/dir installpkg foo-1.0.4-noarch-1.tgz

# To create backup of files that will be overwritten when installing:
tar czvf /tmp/backup.tar.gz $(installpkg --warn foo-1.0.4-noarch-1.tgz)

# To upgrade a Slackware package including files only in new version:
upgradepkg --install-new foo-1.0.6-noarch-1.tgz

# To upgrade a Slackware package even if version is the same:
upgradepkg --reinstall foo-1.0.4-noarch-1.tgz

# To remove a Slackware package:
removepkg foo-0.2.8-x86_64-1

# To remove a Slackware package, retaining a backup (uninstalled) copy:
removepkg -copy foo-0.2.8-x86_64-1  # -> /var/log/setup/tmp/preserved_packages/foo...
