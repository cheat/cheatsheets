---
tags: [ packaging ]
---
# To find <package>:
snap find <package>

# To view detailed information about <package>:
snap info <package>

# To view all private snaps (must be logged in):
snap find --private

# To install the <package>:
sudo snap install <package>

# To install the <package> from the "beta" channel:
sudo snap install <package> --channel=beta

# To view installed snaps:
snap list

# To list all revisions of installed snaps:
snap list --all

# To (manually) update all snaps:
sudo snap refresh

# To (manually) update <package>:
sudo snap refresh <package>

# To update <package> to the "beta" channel:
sudo snap refresh <package> --channel=beta

# To revert <package> to a prior version:
sudo snap revert <package>

# To revert <package> to revision 5:
snap revert <package> --revision 5

# To remove <package>:
sudo snap remove <package>

# To log in to snap (must first create account online):
sudo snap login

# To log out of snap:
snap logout

# To view a transaction log summary:
snap changes

# To view details of item 123 in the transaction log:
snap change 123

# To watch transaction 123:
snap watch 123

# To abort transaction 123:
snap abort 123

# To download <package> (and its assertions) *without* installing it:
snap download <package>

# To install the locally-downloaded `foo` snap with assertions:
snap ack foo.assert
snap install foo.snap

# To install the locally-downloaded `foo` snap without assertions:
# NB: this is dangerous, because the integrity of the snap will not be
# verified. You should only do this to test a snap that you are currently
# developing.
snap install --dangerous foo.snap

# To install snap `foo` in "dev mode":
# NB: this is dangerous, and bypasses the snap sandboxing mechanisms
snap install --devmode foo

# To install snap `foo` in "classic mode":
# NB: this is likewise dangerous
snap install --classic foo

# To view available snap interfaces:
snap interfaces

# To connect the `foo:camera` plug to the ubuntu core slot:
snap connect foo:camera :camera

# To disconnect the `foo:camera` plug from the ubuntu core slot:
snap disconnect foo:camera

# To disable the `foo` snap
snap disable foo

# To enable the `foo` snap
snap enable foo

# To set snap `foo`'s `bar` property to 10:
snap set foo bar=10

# To read snap `foo`'s current `bar` property:
snap get foo bar
