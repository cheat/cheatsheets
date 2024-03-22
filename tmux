# To start tmux:
tmux

# To detach from tmux:
Ctrl-b d

# To restore tmux session:
tmux attach

# To detach an already attached session (great if you are moving devices with different screen resolutions):
tmux attach -d

# To display session:
tmux ls

# To rename session:
Ctrl-b $

# To switch session:
Ctrl-b s

# To start a shared session:
tmux -S /tmp/your_shared_session
chmod 777 /tmp/your_shared_session

# To help screen (Q to quit):
Ctrl-b ?

# To scroll in window:
Ctrl-b PageUp/PageDown

# To reload configuration file
Ctrl-b : source-file /path/to/file

# To create a window:
Ctrl-b c

# To go next window:
Ctrl-b n

# To destroy a window:
Ctrl-b x

# To switch between windows:
Ctrl-b [0-9]
Ctrl-b Arrows

# To split windows horizontally:
Ctrl-b %

# To split windows vertically:
Ctrl-b "

# To swap windows:
Ctrl-b :swap-window -s [0-9] -t [0-9]

# To copy/paste
1. Enter 'copy mode' by pressing CTRL+b, [.
2. Use the arrow keys to go to the position from where you want to start copying. Press CTRL+SPACE to start copying.
3. Use arrow keys to go to the end of text you want to copy. Press ALT+w or CTRL+w to copy into Tmux buffer.
4. Press CTRL+b, ] to paste in a possibly different Tmux pane/window.