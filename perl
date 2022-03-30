# To view the perl version:
perl -v

# Replace string "\n" to newline:
echo -e "foo\nbar\nbaz" | perl -pe 's/\n/\\n/g;'

# Replace newline with multiple line to space:
cat test.txt | perl -0pe "s/test1\ntest2/test1 test2/m"

# Replace double newlines with single newline
perl -pe '$/=""; s/(\n)+/$1/' my-file
