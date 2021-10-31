# To show the last 10 lines of <file>:
tail <file>

# To show the last <number> lines of <file>:
tail -n <number> <file>

# To show the last lines of <file> starting with <number>:
tail -n +<number> <file>

# To show the last <number> bytes of <file>:
tail -c <number> <file>

# To show the last 10 lines of <file> and to wait for <file> to grow:
tail -f <file>
