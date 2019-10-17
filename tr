# To replace : with a new line:
echo $PATH | tr ":" "\n"
echo $PATH | tr -t ":" \n 

# To remove all occurance of "ab":
echo aabbcc | tr -d "ab"         # ouput: cc

# To complement "aa":
# ("Complement" means to keep "aa", and replace all others with "x")
echo aabbccd | tr -c "aa" x       # output: aaxxxxx (no newline)

# To complement "ab\n":
echo aabbccd | tr -c "ab\n" x    #output: aabbxxx (with newline)

# To preserve all alpha(-c). ":-[:digit:] etc" will be translated to "\n". sequeeze mode:
echo $PATH | tr -cs "[:alpha:]" "\n" 

# To convert an ordered list to an unordered list:
echo "1. /usr/bin\n2. /bin" | tr -cs " /[:alpha:]\n" "+"
