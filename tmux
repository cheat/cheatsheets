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
