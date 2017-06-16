puts "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

puts "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

puts "What city are you from?"
city = gets.chomp
city.capitalize!

puts"What state or province are you from?"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"

puts "What's your age?"
user_age = gets.chomp
current_year = t.year
yob = current_year - Integer(user_age) # Calculates user's year of birth.

puts "You are #{user_age} years old and you were born in #{yob}."
