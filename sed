# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' "<path/to/file>"

# To replace all occurrences of "day" with "night" within "<path/to/file>":
sed -i 's/day/night/g' "<path/to/file>"

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces:
sed -i -r 's/^\s+//g' "<path/to/file>"

# To remove empty lines and print results to stdout:
sed '/^$/d' "<path/to/file>"

# To replace newlines in multiple lines:
sed ':a;N;$!ba;s/\n//g' "<path/to/file>"

# To insert a line before a matching pattern:
sed '/Once upon a time/i\Chapter 1'

# To add a line after a matching pattern:
sed '/happily ever after/a\The end.'
