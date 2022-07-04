---
tags: [ perl ]
---
See https://perldoc.perl.org/perlrun

# View the perl version (long and short version):
perl -v
perl -V

# Run a program:
perl <program> [args]

# Syntax check a program:
perl -cw <program>

# Force warnings everywhere in the program:
perl -W <program>

# Add path1 to the module search path:
# The PERL5LIB env var does this too
perl -I <path1> <program> [args]

# Start the program in the perl debugger:
# See https://perldoc.perl.org/perldebug)
perl -d <program>

# Specify the program text as the argument to -e:
perl -e <program_text>
perl -e 'print "Hello World!\n"'

# Enable Unicode:
perl -C -e <program_text>

# Specify the program text and enable new features:
perl -E 'say "Hello World!"'

# Specify the program text and enable new features:
perl -M<module>[=import,list] -E <program_text>

# Compile then decompile a program with B::Deparse:
perl -MO=Deparse -E <program_text>

# Process files line-by-line (output on your own):
perl -ne <program_text> [files]

# Process files line-by-line (output $_ at each loop iteration):
perl -pe <program_text> [files]

# Read an entire file (or STDIN) into one big string.
# With v5.36 and later, -g is the same as -0777
perl -0777 -ne <program_text> [files]
perl -0777 -pe <program_text> [files]
perl -g -pe <program_text> [files]

# Split input lines on whitespace with -a, put into @F:
perl -ane  <program_text>

# -a implies -n:
perl -ae  <program_text>

# Splits lines on alternate separator with -F:
perl -aF<separator> -e <program_text>

# In-place editing with -p:
perl -pe <program_text> [files]

# In-place editing with -p and backup original with -i:
perl -pie <program_text> [files]
perl -pi.bak -e <program_text> [files]

# Replace string "\n" to newline:
echo -e "foo\nbar\nbaz" | perl -pe 's/\n/\\n/g;'

# Replace newline with multiple line to space:
cat test.txt | perl -0pe "s/test1\ntest2/test1 test2/m"

# Replace double newlines with single newline:
perl -pe '$/=""; s/(\n)+/$1/' my-file
