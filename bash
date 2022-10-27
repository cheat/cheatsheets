# All pitfalls are taken from https://mywiki.wooledge.org/BashPitfalls

# Iterating over `.mp3` files in the current directory:
shopt -s nullglob
for file_name in ./*.mp3; do
    some_command "$file_name"
done

# Copying file from one place to another:
cp "./.replit" "$HOME/Documents/.replit" || exit 1

# Comparing plain string equality:
[[ $variable == 'Emily Grace Seville' ]]

# Comparing extended globbing pattern equality:
[[ $variable == [0-9]+ ]]

# Jumping to the directory where file is located:
cd "$(dirname "$HOME/Documents/.replit")" || exit 1

# Joining several conditions via `and` operator:
[[ $first_variable == 'Emily' && $second_variable == 'Seville' ]]

# Comparing numbers:
((variable > 7))

# Counting matching lines in a file:
declare -i line_count=0
while IFS= read -r line
do
    ((line_count++))
done < <(grep '[0-9]' './.replit')

# Reading an input from a keyboard:
read variable

# Replacing all `foo`s with `bar`s in a file:
sed -i 's/foo/bar/g' "$file_name"

# Echoing a message safely:
echo 'There are several *.zip files in the current folder'

# Chaining several commands:
declare -i i=0
if true; then
    ((i++))
else
    ((i--))
fi
echo "$i"

# Obtaining command exit status after an assignment:
declare variable
variable="$(some_command)"
echo "$?"

# Lowering all letters:
some_command | LC_COLLATE=C tr '[:upper:]' '[:lower:]'

# Echoing a message safely:
printf '%s\n' "$message"

# Iterating over [0..9] number range:
for ((i=1; i<=n; i++)); do
    some_command "$i"
done

# Retrieving N-th piped command exit status:
printf 'foo' | fgrep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[1]]}

# Creating a lockfile:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'

# Turining on/off debugging respectively:
set -x
set +x
