---
tags: [ perl ]
---
See https://perldoc.perl.org/perlrun

# view the perl version (long and short version)
perl -v
perl -V

# run a program
perl <program> [args]

# syntax check a program
perl -cw <program>

# force warnings everywhere in the program
perl -W <program>

# add path1 to the module search path
# the PERL5LIB env var does this too
perl -I <path1> <program> [args]

# start the program in the perl debugger (see https://perldoc.perl.org/perldebug)
perl -d <program>

# specify the program text as the argument to -e
perl -e <program_text>
perl -e 'print "Hello World!\n"'

# enable Unicode
perl -C -e <program_text>

# specify the program text and enable new features
perl -E 'say "Hello World!"'

# specify the program text and enable new features
perl -M<module>[=import,list] -E <program_text>

# compile then decompile a program with B::Deparse
perl -MO=Deparse -E <program_text>

# process files line-by-line (output on your own)
perl -ne <program_text> [files]

# process files line-by-line (output $_ at each loop iteration)
perl -pe <program_text> [files]

# read an entire file (or STDIN) into one big string.
# with v5.36 and later, -g is the same as -0777
perl -0777 -ne <program_text> [files]
perl -0777 -pe <program_text> [files]
perl -g -pe <program_text> [files]

# split input lines on whitespace with -a, put into @F
perl -ane  <program_text>

# -a implies -n
perl -ae  <program_text>

# splits lines on alternate separator with -F
perl -aF<separator> -e <program_text>

# in-place editing with -p
perl -pe <program_text> [files]

# in-place editing with -p and backup original with -i
perl -pie <program_text> [files]
perl -pi.bak -e <program_text> [files]

# replace string "\n" to newline
echo -e "foo\nbar\nbaz" | perl -pe 's/\n/\\n/g;'

# replace newline with multiple line to space
cat test.txt | perl -0pe "s/test1\ntest2/test1 test2/m"
