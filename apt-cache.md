---
tags: [ packaging ]
---
# To find packages matching <phrase>:
apt-cache search <phrase>

# To display package records for the named package(s):
apt-cache show <package>...

# To display reverse dependencies of a package:
apt-cache rdepends <package>

# To display package versions, reverse dependencies and forward dependencies of
# a package
apt-cache showpkg <package>
