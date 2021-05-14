---
tags: [ packaging ]
---
# To sync to newest slackbuild.org tree:
sport r

# to search (fuzzy) slackbuild tree for packages foo and bar:
sport s foo bar

# To operate from alternate build tree:
SBOPATH=/path/to/tree sport s foo

# to view info and readme of bar (not fuzzy):
sport c foo BaR

# To build a package:
sport i --build-only foo

# to build and install package foo and bar:
sport i foo BaR

# To build and install package from current directory:
sport i .

# To upgrade instead of install:
INSTALLER=upgradepkg sport i foo

# To build dependency list for baz:
echo "foo bar" >> /tmp/baz.list

# To install list of packages from file:
sport i $(< /tmp/baz.list)

# To check if package is installed:
sport k foo
