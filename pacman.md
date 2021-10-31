---
tags: [ packaging ]
---
# To search for a package:
pacman -Ss <package>...

# To update the local package base and upgrade all out-of-date packages:
pacman -Suy

# To install a package:
pacman -S <package>...

# To uninstall a package:
pacman -R <package>...

# To uninstall a package and its depedencies, removing all new orphans:
pacman -Rcs <package>...

# To get information about package:
pacman -Si <package>...

# To install a package from builded package file (.tar.xz):
pacman -U <file>

# To list the commands provided by an installed package:
pacman -Ql <package>... | sed -n -e 's/.*\/bin\///p' | tail -n +2

# To list explicitly installed packages:
pacman -Qe

# To list the top-most recent explicitly installed packages (not in the base groups):
expac --timefmt='%Y-%m-%d %T' '%l\t%n' $(comm -23 <(pacman -Qeq|sort) <(pacman -Qqg base base-devel|sort)) | sort -r | head -20

# To list orphan packages (installed as dependencies and not required anymore):
pacman -Qdt

# To list installed packages sorted by size
pacman -Qq | pacman -Qi - | egrep '(Size\s+:|Name\s+:[^s])' | sed -E 's/ ([KM])iB/\1/' | sed -z 's/\nInstalled/ /g' | perl -pe 's/(Name|Size) *: //g' | column -t | sort -hk2 -r | cat -n | tac


# You can't directly install packages from the Arch User Database (AUR) with pacman.
# You need yaourt to perform that. But considering yaourt itself is in the AUR, here is how to build a package from its tarball.
# Installing a package from AUR is a relatively simple process:
# - Retrieve the archive corresponding to your package from AUR website
# - Extract the archive (preferably in a folder for this purpose)
# - Run makepkg in the extracted directory. (makepkg-s allows you to install any dependencies automatically from deposits.)
# - Install the package created using pacman
# Assuming $pkgname contains the package name.
wget "https://aur.archlinux.org/packages/${pkgname::2}/$pkgname/$pkgname.tar.gz"
tar zxvf "$pkgname.tar.gz"
cd "$pkgname"
# Build the package
makepkg -s
# Install
sudo pacman -U <package file (.pkg.tar.xz)>
