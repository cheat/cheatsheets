---
tags: [ packaging ]
---
# To install a package:
rpm -ivh <rpm>

# To remove a package:
rpm -e <package>

# To remove a package, but not its dependencies
rpm -e --nodeps <package>

# To find what package installs a file:
rpm -qf <file>

# To find what files are installed by a package:
rpm -ql <package>
rpm -qpl <rpm>

# To find what packages require a package or file:
rpm -q --whatrequires <package>
rpm -q --whatrequires <file>

# To list all installed packages:
rpm -qa

# To find a packages's dependencies:
rpm -i --test <package>

# To display checksum against a source:
rpm -K <package>

# To verify a package:
rpm -V <package>
