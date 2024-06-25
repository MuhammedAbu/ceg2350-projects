# This is an example of a Makefile for Java in Linux
#     I recommend to compare this to the Makefile-C example given
#      since it has more thorough comments
#
#  define java compiler & java program
#    Note: it would be better to do an absolute path to javac & java
JCC = /usr/bin/javac
JV = /usr/bin/java

#  define compilation flag(s)
#  -g compiles with debugging information
JFLAGS = -g

# default action of my makefile (because this is first)
#       pre-req is that demo.java exists
default: repeat.java
	$(JCC) $(JFLAGS) repeat.java

#   defining target (or command to be used with make) to run my program
run: repeat.class
	$(JV) repeat
# defining target to delete my compiled program
clean:
	rm repeat.class
