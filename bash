# Print a specific string with a trailing new line:
echo "Hello from Bash!"

# Declare a variable with a specific value
declare user_name="Emily Grace Seville"

# Place file contents without trailing new lines to a specific variable:
declare file_contents="$(cat "<file>")"

# Check if file exists
if [[ -f "<file>" ]]; then
  echo "File exists"
fi

# Check if a file contains a string matching a specific pattern:
if grep '<pattern>' "<file>"; then
  echo "File contains such string"
fi

# Iterate over all files in the current directory:
for file in ./*;
do 
    echo "$file";
done

# Chose on of alternatives:
case "$some_variable"
in
    0) echo "zero found";;
    1) echo "one found";;
    *) echo "something else found";;
esac

# To turn on/off debugging respectively:
set -x
set +x

# Retrieve N-th piped command exit status:
printf 'foo' | fgrep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[0]}  # replace 0 with N

# To create a lockfile:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'
