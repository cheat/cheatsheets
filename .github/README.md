# cheatsheets #
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
git commit -m <message>
```

To take a long story short here are our guidelines for cheatsheets:

- If the cheatsheet contains frontmatter, it must be valid.
- Cheatsheets should generally be scoped to a single CLI command (most often POSIX-compatible CLI command).
  - It's not always possible. For instance pages describing shell syntax often can't avoid describing
    multiple CLI commands as almost everything in traditional shells is a command.
  - Don't create pages for CLI commands with a good help system like `fish`, etc because users of them already have
    neat completion system/man pages written by other contributors and maintainers.
- Cheatsheets should end with a newline, but not a blank line.
- Code blocks should be separated by a single blank line.
- The comment line should end with a colon: `# To foo the bar:`, rather than `# To foo the bar`.
- Text should be reduced near to the minimum necessary to do the job. Avoid commentary and context where possible.
- Where possible, cheatsheets should be consistent both internally, and with other sheets.
- Excluding cases where it might cause confusion, commands should generally conform to [docopt][] syntax.
- Instead of placeholders use variable names like `caja "$path_to_directory"`.

### License ###
Cheatsheets are licensed under [Creative Commons CC0 1.0][cc0]. See
[LICENSE.txt][] for the full license text.


[LICENSE.txt]: https://github.com/cheat/cheatsheets/blob/master/.github/LICENSE.txt
[cc0]: https://creativecommons.org/publicdomain/zero/1.0/legalcode
[cheat]:  https://github.com/cheat/cheat
[docopt]: http://docopt.org
