# Ruby - Interpreted object-oriented scripting language
# Main page: https://www.ruby-lang.org/
# Help and documentation: https://ruby-doc.org/

# To serve the current directory:
ruby -run -e httpd . -p <port>

# To execute a script file:
ruby <file>

# To execute one line of script:
ruby -e 'command'

# To check script file syntax:
ruby -c <file>

# To specify $LOAD_PATH directory:
ruby -Idirectory
ruby -Ispec spec/test_spec.rb
