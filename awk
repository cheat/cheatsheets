# To sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# To use a specific character as separator to sum integers from a file or stdin:
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# To print a multiplication table:
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# To specify an output separator character:
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'

# To execute commands only on rows that satisfy a certain condtion
printf "george jetson\nolive oyl\nbeetle bailey" | awk '$2=="bailey"{print $0}'
#
# To execute commands only on matching rows using regex
printf "george jetson\nolive oyl\nbeetle bailey" | awk '/ley$/{print $0}'
