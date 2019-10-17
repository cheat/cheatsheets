# To strace a command:
strace <command>

# To save the trace to a file:
strace -o <outfile> <command>

# To follow only the open() system call:
strace -e trace=open <command>

# To follow all the system calls which open a file:
strace -e trace=file <command>

# To follow all the system calls associated with process management:
strace -e trace=process <command>

# To follow child processes as they are created:
strace -f <command>

# To count time, calls and errors for each system call:
strace -c <command>

# To trace a running process (multiple PIDs can be specified):
strace -p <pid>
