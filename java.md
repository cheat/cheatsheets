---
tags: [ java, jar ]
---
# To execute a java program
# To run a java file
java -jar <filename.jar>

# To pass arguments to your java program
java -jar <filename.jar> <arg1> <arg2> ...
java -jar example.jar "Hello world" 1234

# To get the version of the installed java enviroment
java -showversion

Example output:
openjdk version "11.0.8" 2020-07-14
OpenJDK Runtime Environment (build 11.0.8+10-post-Ubuntu-0ubuntu120.04)
OpenJDK 64-Bit Server VM (build 11.0.8+10-post-Ubuntu-0ubuntu120.04, mixed mode, sharing)

# To set the intial memory size to be used by the program
# Use -Xms<size> to set inital memory allocation
# Use -Xmx<size> to set maximun allowed memory allocation
# Use -Xss<size> to set maximun allowed thread stack size
# Initially asigns 256mb and allows up to 2gb, thread stack size of 1mb
java -Xms256m -Xmx2g -Xss1m -jar <filename.jar>

# To use the classpath variable
# It overrides the CLASSPATH of Environment variable but only for that session. 
# If you restart the application you need to again set the classpath variable.
# You can use either: -classpath, --classpath or -cp
java -classpath <classpath> -jar <filename.jar>
java -classpath "my/example/path/one:my/example/path/two" -jar myfile.zip

# To execute a java class
# Say you have a java class of name HelloWorld in a file called HelloWorld.java
# Say you want to execute your class HelloWorld and pass it the argument "hello"
# Say the file is the local directory we use the options "-cp ."
java -cp <path> <class> <arg>
java -cp . HelloWorld "hello"
