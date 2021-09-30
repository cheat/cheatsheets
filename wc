# To count the number of words (file or STDIN):
wc -w <file>
cat <file> | wc -w

# To count the number of lines (file or STDIN):
wc -l <file>
cat <file> | wc -l

# To count the number of bytes (file or STDIN):
wc -c <file>
cat <file> | wc -c

# To count files and directories at a given location:
ls | wc -l

# To if you ever use `wc` in a shell script and need to compare the output with an int you can
# clean the output (wc returns extra characters around the integer) by using xargs:
ls -l | wc -l | xargs
