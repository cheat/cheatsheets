# All pitfalls are taken from https://fishshell.com/docs/current/faq.html

# Creating a variable:
set -x variable value # typically set -gx key value

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

# Choosing `coolbeans` theme in an interactive shell:
if status is-interactive
    fish_config theme choose coolbeans
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
