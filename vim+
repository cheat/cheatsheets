# ---
tags: [ vim ]
---

# File info & Status
CTRL-g           Show file info and cursor position

# File management
:e               reload file
:q               quit (fails if there are unsaved changes)
:q! or ZQ        quit and throw away unsaved changes
:w               write (save) the file, but don't exit
:w newfile       write (save) to a new file named newfile
:w !sudo tee %   write out the current file using sudo
:wq or :x or ZZ  write (save) and quit
:x               write file and exit


# VIM Cursor Movements
   k             move cursor up
h                move cursor left
      l          move cursor right
   j             move cursor down
H                move to top of screen
M                move to middle of screen
L                move to bottom of screen
w                jump forwards to the start of a word
W                jump forwards to the start of a word (words can contain punctuation)
e                jump forwards to the end of a word
E                jump forwards to the end of a word (words can contain punctuation)
b                jump backwards to the start of a word
B                jump backwards to the start of a word (words can contain punctuation)
0                jump to the start of the line
^                jump to the first non-blank character of the line
$                jump to the end of the line
g_               jump to the last non-blank character of the line
gg               go to the first line of the document
5gg		 go to line 5
5G               go to line 5
G                go to the last line of the document
gk               move down one displayed line
gj               move up one displayed line
fx               jump to next occurrence of character x
tx               jump to before next occurrence of character x
}                jump to next paragraph (or function/block, when editing code)
{                jump to previous paragraph (or function/block, when editing code)
%                move cursor to corresponding pairs of brackets ( { [ ] } ) 
zz               center cursor on screen
CTRL-b           move back one full screen
CTRL-f           move forward one full screen
CTRL-d           move forward 1/2 a screen
CTRL-u           move back 1/2 a screen

# VIM Text Manipulation
# (use Esc or CTRL-C to exit from insert mode)
i                insert before the cursor
I                insert at the beginning of the line
a                insert (append) after the cursor
A                insert (append) at the end of the line
o                append (open) a new line below the current line
O                append (open) a new line above the current line
r                replace (overwrite) a single character
R                enter insert mode but replace (overwrite) instead of inserting chars
ea               insert (append) at the end of the word
Esc              exit insert mode
J                join line below to the current line
cc               change (replace) entire line
cw               change (replace) to the end of the word
c$               change (replace) to the end of the line
s                delete character and substitute text
S                delete line and substitute text (same as cc)
xp               transpose two letters (delete and paste)
u                undo
CTRL-r           redo
.                repeat last command
:r {file}        insert content from file

# VIM Cut and Paste
yy               yank (copy to the clipbloard) a line
2yy              yank (copy to the clipbloard) 2 lines 
yw               yank (copy to the clipbloard) the characters of the word from the cursor position to the start of the next word
y$               yank (copy to the clipbloard) from the cursor position to the end of the line
y {motion}       yank (copy to the clipbloard) text that {motion} moves over
p                put (paste) the clipboard after cursor
P                put (paste) before cursor
x or <DEL>       delete (cut) character
dd               delete (cut) a line
2dd              delete (cut) 2 lines
dw               delete (cut) the characters of the word from the cursor position to the start of the next word
d$ or D          delete (cut) to the end of the line
d {motion}       delete text that {motion} moves over

# Preceding a motion or edition with a number 'n' repeats the action 'n' times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42gg        go to line 42

# VIM Search
/pattern                  search for pattern
?pattern                  search backward for pattern
\vpattern                 'very magic' pattern: non-alphanumeric characters are interpreted as special regex symbols
n                         repeat search in same direction
N                         repeat search in opposite direction

# VIM options during search operations
:set ic                   find both uppercase and lowercase search results (ignore case)
:set noic                 enable the case sensitivity (set not ignore case)
:set hls                  highlight the search results (set highlight search)
:set nohls or :noh        remove highlighting of search matches (not highligt)
:set is                   incrementally highlight results during search query input (set inc search)
:set nois                 disable incrementally highlighting during search query input (set not inc search)

# VIM Search and Replace (with the `:substitute` (aka `:s`) command)
:s/old/new/               replace the first match of 'old' with 'new' on the current line only
:s/old/new/g              replace all matches ('g' flag) of 'old' with 'new' on the current line only
:#,#s/old/new/g           replace all matches ('g' flag) of 'old' with 'new' in every line between line nr '#' and line nr '#'
:%s/old/new/g             replace all 'old' with 'new' throughout file ('%' flag)
:%s/old/new/gc            replace all 'old' with 'new' throughout file with manual confirmations ('c' flag) 

# VIM Visual Mode
v                start visual mode, mark lines, then perform an operation (such as d-delete)
V                start linewise visual mode
CTRL-v           start blockwise visual mode
o                move to the other end of marked area
O                move to other corner of block
aw               mark a word
ab               a block with ()
aB               a block with {}
ib               inner block with ()
iB               inner block with {}
Esc              exit visual mode

# Visual Commands
>                shift text right
<                shift text left
y                yank (copy) marked text
d                delete marked text
~                switch case

# VIM Registers
:reg             show registers content
"xy              yank into register x
"xp              paste contents of register x

# VIM Marks
:marks           list of marks
ma               set current position for mark A
`a               jump to position of mark A
y`a              yank text to position of mark A

# VIM Macros
qa               record macro a
q                stop recording macro
@a               run macro a
@@               rerun last run macro

# VIM Search in Multiple Files
:vimgrep /pattern/{file}  search for pattern in multiple files
                          e.g. :vimgrep /foo/ **/*
:cn                       jump to the next match
:cp                       jump to the previous match
:copen                    open a window containing the list of matches

# Working With Multiple Files
:e filename              edit a file in a new buffer
:bnext or :bn            go to the next buffer
:bprev or :bp            go to the previous buffer
:bd                      delete a buffer (close a file)
:ls                      list all open buffers
:sp filename             open a file in a new buffer and split window
:split filename          open a file in a new buffer and split window
:vsp filename            open a file in a new buffer and vertically split window
:vsplit filename         open a file in a new buffer and vertically split window
CTRL-w s                 split window
CTRL-w w                 switch windows
CTRL-w q                 quit a window
CTRL-w v                 split window vertically
CTRL-w h                 move cursor to the left window (vertical split)
CTRL-w l                 move cursor to the right window (vertical split)
CTRL-w j                 move cursor to the window below (horizontal split)
CTRL-w k                 move cursor to the window above (horizontal split)
CTRL-w _                 maximize current window
CTRL-w =                 make all equal size
10 CTRL-w +              increase window size by 10 lines
:hide                    close current window
:only                    keep only this window open

# VIM Tabs
:tabnew or :tabnew file       open a file in a new tab
CTRL-w T                      move the current split window into its own tab
gt or :tabnext or :tabn       move to the next tab
gT or :tabprev or :tabp       move to the previous tab
#gt                           move to tab number #
:tabmove #                    move current tab to the #th position
:tabclose or :tabc            close the current tab and all its windows
:tabonly or :tabo             close all tabs except for the current one
:tabdo command                run the command on all tabs

# Multiple windows
:e filename          edit another file
:split filename      split window and load another file
CTRL-w up arrow      move cursor up a window
CTRL-w CTRL-w        move cursor to another window (cycle)
CTRL-w _             maximize current window
CTRL-w =             make all equal size
10 CTRL-w +          increase window size by 10 lines
:vsplit file         vertical split
:sview file          same as split, but readonly
:hide                close current window
:only                keep only this window open
:ls                  show current buffers
:b 2                 open buffer #2 in this window
:! <shell command>   execute any shell command

# Buffers
# move to N, next, previous, first last buffers
:bn              - goes to next buffer
:bp              - goes to prev buffer
:bf              - goes to first buffer
:bl              - goes to last buffer
:b 2             - open buffer #2 in this window
:new             - open a new buffer
:vnew            - open a new vertical buffer
:bd 2            - deletes buffer 2
:wall            - writes all buffers
:ball            - open a window for all buffers
:bunload         - removes buffer from window
:taball          - open a tab for all buffers

# Pointers back
ctrl-o

# Pointers forward
ctrl-o

# Super search
ctrl-p

# To sort  a visual range on column 1 as a number:
:'<,'>!sort -gk 1 -t ,

# Map (in normal mode) the F2 key to a bash call `uuidgen`, then trim the `\n`
# from the result, and put that in the expression register `"=`, then put that
# before the cursor:
nmap <F2> "= system("uuidgen")[:-2]<C-M>P

# Delete every line that has a FOO in it. See `:help global`.
# The _ in the d _ command ensures registers and clipboards are not changed.
:g/FOO/d _
