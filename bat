# Display a single file on the terminal:
bat "<path/to/file>"

# Display multiple files at once:
bat "<path/to/file>" "<path/to/file>"

# Show and highlight non-printable characters:
bat -A "<path/to/file>"

# Display all supported languages:
bat --list-languages

# Set the language for syntax highlighting:
bat --language <language> <file.<language extension>>
