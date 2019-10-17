# To start the debugger:
gdb your-executable

# To set a breakpoint:
b some-method, break some-method

# To run the program:
r, run

# when a breakpoint is reached:

# To run the current line, stepping over any invocations:
n, next

# To run the current line, stepping into any invocations:
s, step

# To print a stacktrace:
bt, backtrace

# To evaluate an expression and print the result:
p length=strlen(string)

# To list surrounding source code:
l, list

# To continue execution:
c, continue

# To exit gdb (after program terminated):
q, quit
