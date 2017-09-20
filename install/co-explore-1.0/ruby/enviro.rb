=begin

Demonstration of using environment variables.

Ruby makes this very easy (compared to some other languages) by automatically
creating an ENV variable, which is a hash-like accessor for environment variables.

See https://ruby-doc.org/core-2.4.1/ENV.html for more info on Ruby's ENV.

=end

puts <<EOM
Your home directory ($HOME) is #{ENV['HOME']}
Your user ($USER) is #{ENV['USER']}
Your shell ($SHELL) is #{ENV['SHELL']}
Your language ($LANG) is #{ENV['LANG']}

These are all things that I'd expect would change
when this program is run from different environments, so
it's good that I can extract the info from the ENV variable.

How else could I have known these things?
You COULD have put them into the code directly, like the following:

HOME=/user/pi
USER=pi

etc
but this would mean the program would contain incorrect info when 
it runs somewhere else, like on someone else's machine.

Also, you may not feel like sharing this possibly private info!
EOM
