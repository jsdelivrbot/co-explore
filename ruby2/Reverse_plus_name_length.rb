#the "reverse" method
var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '.....TCELES B HSUP A magic spell?'

puts var1.reverse
puts var2.reverse
puts var3.reverse

puts var1
puts var2
puts var3

##the "length" method
#puts 'What\'s your full name?'
#name = gets.chomp
#puts 'Did you know that there are ' + name.length.to_s + ' characters in your name "' + name + '"?'

puts 'Your first name?'
f_name = gets.chomp.length

puts 'Your middle name?'
m_name = gets.chomp.length

puts 'Your last name?'
l_name = gets.chomp.length

full_name_len = f_name + m_name + l_name
puts  'Did you know that there are ' + full_name_len.to_s + ' characters in your name "' + full_name_len + '"?'
