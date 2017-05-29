# Notes
Making a start at recording of some of the unix commands we've been through.



### Reading a file
Don't use an editor if you just wish to read the contents - this way you avoid accidentally altering it.
Instead use one of these tools, in increasing order of sophistication:

- `cat` - short for 'concatenate', it outputs everything in one splurge (but is still useful for other reasons)
- `more` - like `cat`, but with more features: it waits after a page full of output and asks 'more?'
- `less` - like `more`, but with even more features. *less is more!*

### Standard input, output and error files
Almost all unix/linux commands automatically have three files associated with them. These 'standard' files are 
named `stdin`, `stdout`, and `stderr`:

- `stdin` - the standard input file - where commands that process input will read their input from, by default.
- `stdout` - the standard output file - where commands that produce output will write their output to, by default.
- `stderr` - the standard error file - where commands will output error messages, by default.

#### Command Shell redirection of stdin, stdout, and stderr
Command line shells, like `bash`, have facilities to redirect the standard input, output, and error files of commands.
These files can be redirected in several ways:
- to files on the filesystem (via `<`, `>`, and `2>`, for stdin, stdout, and stderr respectively)
- to the standard files of other commands (via the pipe symbol `|`)



### To investigate later
- JetBrains, the makers of PyCharm, also make a Ruby IDE - [RubyMine](https://www.jetbrains.com/ruby/whatsnew/) - 
  Perhaps this runs well on the RPi?  Perhaps it's worth getting? 

