---
tags: [ shell ]
---
# Output specific strings:
echo <arg1 arg2 ...>
# Input example:
echo Hello dear Emily
# Output example:
Hello dear Emily

# Create variables with specific names and values:
declare <variable_name1=variable_value1 variable_name2=variable_value2 ...>
# Input example:
declare old_config_name=.bashrc.old new_config_name=.bashrc
# No output.

# Read variables with specific names:
read <variable_name1 variable_name2 ...>
# Input example:
read old_config_name new_config_name
# No output.

# Check whether specific strings are equal/not equal:
[[ <first_string> <==|!=> <second_string> ]]
# Input example:
[[ $user_name == Emily ]]
# No output.

# Check whether a specific number is equal to/not equal to/greater than/greater or equal than/less than/less or equal than a second one:
(( <first_number> <==|!=|\>|\>=|\<|\<=> <second_number> ))
# Input example:
(( user_age > 0 ))
# No output.

# ======================================
# Below some common pitfalls are listed:
# ======================================

# Iterate over specific files in the current directory:
shopt -s nullglob
for file_name in ./<glob_pattern>; do
    <command> "$file_name"
done

# Copy a file from a specific place to another:
cp "<path/to/source_file>" "<path/to/destination_file>" || exit 1

# Jump to the directory where a specific file is located:
cd "$(dirname "<path/to/file>")" || exit 1

# Join several conditions via or/and operator:
[[ <first_condition> <||\|&&> <second_condition> ]]

# Count matching lines in a specific file:
declare -i line_count=0
while IFS= read -r line
do
    ((line_count++))
done < <(grep "<regular_expression>" "<path/to/file>")

# Replace all strings matching a specific pattern with a replacement in a file:
sed -i "s/<regular_expression>/<replacement>/g" "<path/to/file>"

# Obtain command exit status after an assignment:
declare variable
variable="$(some_command)"
echo $?

# Lower all letters:
some_command | LC_COLLATE=C tr "[:upper:]" "[:lower:]"

# Output a specific message safely:
printf "%s\n" "$message"

# Iterate over a specific number range:
for ((i=<minimum_value>; i<=<maximum_value>; i++)); do
    <command> "$i"
done

# Retrieve a specific piped command exit status:
printf "<string_template>" "<arg1 arg2 ...>" | fgrep "<regular_expression1>" | sed "s/<regular_expression2>/<replacement>/"
echo ${PIPESTATUS[<index>]]}

# Create a lockfile:
( set -o noclobber; echo > "<my.lock>" ) || echo 'Failed to create lock file'

# Turin on or off debugging respectively:
set <-|+>x
