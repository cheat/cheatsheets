# Ruby - Interpreted object-oriented scripting language
# Main page: https://www.ruby-lang.org/
# Help and documentation: https://ruby-doc.org/

# Serve the current directory
ruby -run -e httpd . -p 5000

# Execute script file
ruby script.rb

# Execute one line of script
ruby -e 'command'

# Check script file syntax
ruby -c script.rb

# Specify $LOAD_PATH directory
ruby -Idirectory
ruby -Ispec spec/test_spec.rb
