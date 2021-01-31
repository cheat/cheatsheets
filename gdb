# To start the debugger:
gdb <executable>, gdb --args <executable> [<args>...], gdb -p <pid>

# To set a breakpoint at a function:
b, break <function>

# To set a (conditional) breakpoint at a general location:
b, break <loc> [if <condition>]
  with <loc> as <function>|<file>:<line>|<line>|*<address>|-offset|+offset

# To delete all breakpoints or breakpoint at a given location:
clear, clear <loc>
  with <loc> as <function>|<file>:<line>|<line>|*<address>|-offset|+offset

# To run the program, optionally with arguments for the program:
r, run [<args>]

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
bt, backtrace full

# To print the arguments to the function of the current stack frame:
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

# Disassemble the current or given function:
disas, disassemble [/m] [<func>]
  with /m to show mixed source

# Disassemble the given address range:
disas <start>,<end>
disas <start>,+<length>

# Examine content at address with a format and letter size:
x/<count><fmt><size> <address>
    ------- <fmt> ------    ------- <size> -------
    a | Address             b | 8 bits  - byte
    i | Instruction         h | 16 bits - halfword
    t | Binary              w | 32 bits - word
    o | Octal               g | 64 bits - giant
    h | Hex
    z | Hex, zero padded
    d | Decimal
    u | Unsigned decimal
    f | Float
    c | Char
    s | String
