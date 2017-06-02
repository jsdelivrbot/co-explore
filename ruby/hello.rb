=begin

A simple hello program to prompt for a name and greet the person using it.
 
It is instructive to run this program in several different ways, to highlight how `gets` reads from 
the standard input file (stdin).
 
 1. Interactive
    Launching this program in the command line shell prompts you to enter an name, then it prints the greeting.
    Below is an example session ($ represents the command line shell prompt):
 
     $ ruby hello.rb
     What is your name?
     Alan                       <-- I typed this line interactively, in response to the prompting question.
     Hello Alan
 
 2. Using a filename as a command line argument
    Launching the program with a command line argument that is a filename causes the ruby interpreter to open
    that file as it's standard input file.  Below is an example session:
 
     $ ruby hello.rb name.txt
     What is you name?
     Hello Rumpelstiltskin
 
    Here the argument is `name.txt`, which is a text file containing the name Rumpelstiltskin (from the fairy 
    tale https://en.wikipedia.org/wiki/Rumpelstiltskin). Notice how the `gets` was able to read the contents
    of this file.
 
 3. By piping from another command
    It is possible to pipe the output of another command into the input of this ruby script.  Here is an
    example session, showing how the shell's `echo` command can be used to provide input into the ruby script:
 
     $ echo Yuliya | ruby hello.rb
     What is your name?
     Hello Yuliya
 
 
    Here the shell is executing two commands (echo and ruby), and because of the pipe symbol (|) is redirecting
    the standard output file of the echo command into the standard input file of the ruby command.
 
    This works the same way for other commands, for example:
 
     $ which ls | ruby hello.rb
     What is your name?
     Hello /bin/ls
     
     $ which python | ruby hello.rb
     What is your name?
     Hello /usr/bin/python
     
     $ ruby -v | ruby hello.rb
     What is your name?
     Hello ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin16]
 
    Hehe :-)
    xxx
 
=end

puts "What is your name? "
name = gets.chomp
puts "Hello #{name}"
