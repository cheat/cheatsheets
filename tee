# To tee stdout to <outfile>:
ls | tee <outfile>

# To tee stdout and append to <outfile>:
ls | tee -a <outfile>

# To tee stdout to the terminal, and also pipe it into another program for further processing:
ls | tee /dev/tty | xargs printf "\033[1;34m%s\033[m\n"
