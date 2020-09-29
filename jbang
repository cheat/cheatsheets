# Create a new command line application using Picocli
jbang init --template=cli CmdLineApp.java

# Edit application with Visual Studio Code
jbang edit --open=code CmdLineApp.java

# Edit application with IDEA and have the project regenerated on dependencies changes
jbang edit --live --open=idea CmdLineApp.java

# Rebuild application in cache without starting it
jbang build CmdLineApp.java

# Run command line application with jbang
jbang CmdLineApp.java command arg1 arg2...

# Run command line as a script
./CmdLineApp.java command arg1 arg2...

# Run a Java code snippet (Java 9 and later)
echo 'Files.list(Paths.get("/etc")).forEach(System.out::println);' | jbang -

# Debug
jbang --debug CmdLineApp.java command arg1
# Then start debugger in IDEA once port is printed

# Run a script from the network
jbang https://github.com/jbangdev/jbang-catalog/blob/master/hello.java

# Run a jbang script referenced in a catalog
# Where hello.java is located in jbang-catalog repository of GitHub jbangdev user
jbang hello@jbangdev

# Run a jar file from its GAV
jbang io.swagger:swagger-codegen-cli:RELEASE --help

# Install JDK 14 to be used with jbang
jbang jdk install 14

# Force usage of JDK 14 in a jbang script
## Add //JAVA 14 to the first lines of the script
## Then start it using jbang

# List jbang installed JDK
jbang jdk list

# Clear jbang cache
jbang cache clear

# Install auto-completion script for Bash
jbang completion | sudo tee /etc/bash_completion.d/jbang
