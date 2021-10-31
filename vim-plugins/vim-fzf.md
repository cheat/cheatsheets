---
tags [ vim,vim-plugins ]
---

# https://github.com/junegunn/fzf.vim

# Command	List
:Files [PATH]	Files (runs $FZF_DEFAULT_COMMAND if defined)
:GFiles [OPTS]	Git files (git ls-files)
:GFiles?	Git files (git status)
:Buffers	Open buffers
:Colors	Color schemes
:Ag [PATTERN]	ag search result (ALT-A to select all, ALT-D to deselect all)
:Rg [PATTERN]	rg search result (ALT-A to select all, ALT-D to deselect all)
:Lines [QUERY]	Lines in loaded buffers
:BLines [QUERY]	Lines in the current buffer
:Tags [QUERY]	Tags in the project (ctags -R)
:BTags [QUERY]	Tags in the current buffer
:Marks	Marks
:Windows	Windows
:Locate PATTERN	locate command output
:History	v:oldfiles and open buffers
:History:	Command history
:History/	Search history
:Snippets	Snippets (UltiSnips)
:Commits	Git commits (requires fugitive.vim)
:BCommits	Git commits for the current buffer
:Commands	Commands
:Maps	Normal mode mappings
:Helptags	Help tags 1
:Filetypes	File types
