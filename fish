---
tags: [ shell ]
---
# Output specific strings:
echo <arg1 arg2 ...>
# Input example:
echo Hello dear Emily
# Output example:
Hello dear Emily

# Create variable with a specific name and value:
set <variable_name> <variable_value>
# Input example:
set old_config_name .bashrc.old
# No output.

# Read variables with specific names:
read <variable_name1 variable_name2 ...>
# Input example:
read old_config_name new_config_name
# No output.

# Check whether specific strings are equal/not equal:
[ <first_string> <==|!=> <second_string> ]
# Input example:
[ $user_name == Emily ]
# No output.

# Check whether a specific number is equal to/not equal to/greater than/greater or equal than/less than/less or equal than a second one:
test <first_number> -<eq|ne|gt|ge|lt|le> <second_number>
# Input example:
test $user_age -gt 0
# No output.

# ======================================
# Below some common pitfalls are listed:
# ======================================

# Export specific variables:
set -x <variable_name1 variable_name2 ...>

# Removing a variable:
set -e variable

# Checking whether variable is defined:
if set -q variable
    some_command
end

# Checking whether variable is not empty:
if string length -q -- $variable
   some_command
end

# Changing an interactive shell prompt:
function fish_prompt
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' > '
end

# Removing a greeting message:
set -U fish_greeting
