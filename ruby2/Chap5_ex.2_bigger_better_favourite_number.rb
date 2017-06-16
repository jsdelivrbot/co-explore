=begin
Here I'll ask for a person's favourite number.
Then I'll add 1 to it and  will suggest the result as a bigger better number.
=end

puts 'What\'s your favourite number?'
favourite_number = gets.chomp.to_i
better_number = favourite_number + 1

puts 'Well, would you consider ' + better_number.to_s + ' a better number?'
puts "Another number could be #{better_number ** 3 }"

=begin
conclusions after exercise:
"gets" input returns string. In order to perform math operations use method "to_i".
Concatenate 'string' + string variable + 'string'
Concatenate "string #{other variable} string" OR "string #{other variable}"
=end
