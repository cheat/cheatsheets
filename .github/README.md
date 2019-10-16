cheatsheets
===========
This repository contains community-sourced cheatsheets to be used with
[cheat][] and similar applications.

### Format ###
Cheatsheets are plain-text files that begin with an optional "front matter"
header in YAML format. The header may be used to assign "tags" to a sheet, and
to specify the sheet's syntax (`bash`, `python`, `go`, etc).

When possible, cheatsheets should conform to this format:

```sh
---
syntax: bash
tags: [ vcs, development ]
---
# To stage all changes in the current directory:
git add --all

# To commit staged changes:
git commit -m "chore: updated the README"
```


[cheat]: https://github.com/cheat/cheat
