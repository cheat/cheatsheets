# To start the debugger:
gdb your-executable

# To set a breakpoint:
b some-method, break some-method

# To delete all breakpoints
clear

# To run the program:
r, run

# To run the current line, stepping over any invocations:
n, next

# To run the current line, stepping into any invocations:
s, step

# To continue execution:
c, continue

# To exit gdb (after program terminated):
q, quit

# To print a stacktrace:
bt, backtrace

# To print a stacktrace with local variables:
backtrace full

# To print the arguments to the funtion of the current stack frame:
info args

# To print the local variables in the currently selected stack frame:
info locals

# To print a list of all the threads:
info threads

# To print a list of all the loaded shared libraries:
info sharedlibrary

# To evaluate an expression and print the result:
p length=strlen(string)

# To list surrounding source code:
l, list

# Disassemble the current function or given location
disassemble
disassemble {LOCATION}

# Examine content at address with a format and letter size:
x/{COUNT}{FMT}{SIZE} {ADDRESS}
# Formats:
a # Address
i # Instruction
t # Binary
o # Octal
h # Hex
z # Hex, zero padded
d # Decimal
u # Unsigned decimal
f # Float
c # Char
s # String
# Sizes:
b # 8bits  - byte
h # 16bits - halfword
w # 32bits - word
g # 64bits - giant
