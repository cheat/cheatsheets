# To substitute variable value:
echo $<variable>

# To substitute variable default value when it's unset or empty, otherwise use variable's value:
echo $<variable:-default>

# To assign variable default value when it's unset or empty:
: $<variable:=default>

# To substitute variable with the shortest/longest pattern match removed from the beginning:
echo $<variable#pattern>
echo $<variable##pattern>

# To substitute variable with the shortest/longest pattern match removed from the end:
echo $<variable%pattern>
echo $<variable%%pattern>

# To implement a for loop:
for file in *;
do 
    echo $file found;
done

# To implement a case command:
case "$1"
in
    0) echo "zero found";;
    1) echo "one found";;
    2) echo "two found";;
    3*) echo "something beginning with 3 found";;
esac

# To turn on debugging:
set -x

# To turn off debugging:
set +x

# Retrieve N-th piped command exit status:
printf 'foo' | fgrep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[0]}  # replace 0 with N

# To create a lockfile:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'

# To redirect block of text with variables being substituted and other expansions performed to some command:
<command> << DELIMITER
  <contents>
DELIMITER
