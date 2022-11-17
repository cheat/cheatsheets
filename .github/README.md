# cheatsheets

This repository contains community-sourced cheatsheets to be used with
[cheat][] and similar applications.

## Format

Everything unspecified down below is permitted.

Cheatsheets are plain-text files that begin with an optional front matter
header in YAML format. The header may be used to assign tags (`tags` key) to a sheet, and
to specify the sheet's syntax (`syntax` key).

 
All cheatsheets should conform to this format:

```sh
---
syntax: <language>
tags: <tags>
---
# Code example description:
command <arg1 arg2 ...>

# Code example description:
command <arg1 arg2 ...>
# Input example:
command arg1
# Output example:
some output

# Some
# multiline
# comment
# between
# examples

...
```

For instance the following cheatsheet describes `alias` shell builtin:

```
---
tags: [ builtin ]
---
# See also:
# - `unalias` for removing aliases

# This command is available in:
# - Bash
# - Zsh
# - Fish

# List all aliases:
alias
# Output example:
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# List aliases with specific names:
alias <alias_name1 alias_name2 ...>
# Input example:
alias egrep fgrep grep
# Output example:
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

# Create aliases with specific name and value:
alias <alias_name1=alias_value1 alias_name2=alias_value2 ...>
# Input example:
alias egrep='egrep --color=auto' fgrep='fgrep --color=auto' grep='grep --color=auto'
# No output.

# Don't use aliases instead of functions. When possible prefer later ones.
```

### Links to other pages

Links to other pages are optional and should be placed at the page's top right after it's front matter and conform to this format:

```
# See also:
# - `other_command` for <description>
```

For instance the following link referres to `unalias` page:

```
# See also:
# - `unalias` for removing aliases
```

### Code examples

All code examples should conform to this format and be delimited by one empty line:

```
# Code example description:
command <arg1 arg2 ...>
# Input example:
command arg1
# Output example:
some output
```

- Code examples for specific shells should use specific shell syntax rules. Otherwise POSIX shell syntax should be preferred.
- Quotes should be used just when without it shell will be confused or when it's a best practise.
- Double quotes should be used instead of single ones until there are some expansions inside them.
- Input can be omitted with the corresponding comment just if the code example demonstrates how to use command without any options.
- Output can me omitted with the corresponding comment and replaced with `No output.` comment just if no output is produced.
- Code examples and their descriptions can span multiple lines.
- Prefer imperative mood in code descriptions.

### Placeholders

All placeholders conform to this format `<placeholder>`. Placeholders should not contain specific values. For this purpose
input examples exist.

#### Path placeholders

Use `<path/to/file>` or `<path/to/directory>` just when relative paths are permitted. Otherwise prefer `</path/to/file>` or
`</path/to/directory>`.

### Multiline comments between examples

Multiline comments between examples can be used to clarify how command work and be used as a note for several code examples. As
all code examples such long comments should be delimited by one empty line.

For instance the following comment mentions some shells with `alias` command available:

```
# This command is available in:
# - Bash
# - Zsh
# - Fish
```

Using imperative mood in such multiline comments between examples is not required.

## License
Cheatsheets are licensed under [Creative Commons CC0 1.0][cc0]. See
[LICENSE.txt][] for the full license text.


[LICENSE.txt]: https://github.com/cheat/cheatsheets/blob/master/.github/LICENSE.txt
[cc0]: https://creativecommons.org/publicdomain/zero/1.0/legalcode
[cheat]:  https://github.com/cheat/cheat
