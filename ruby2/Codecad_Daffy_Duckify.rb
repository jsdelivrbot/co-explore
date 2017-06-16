while true
	print 'Type in here your thought: '
	user_input = gets.chomp
	user_input.downcase!


	if user_input.include? "s"
	  user_input.gsub!(/s/, "th")
	  break
	else
	  puts 'Didn\'t find any "s" in you phrase! Try again!'
	end
end
puts "This is your phrase: #{user_input}."
puts #adds a new line
puts 'Ith\'t thith  hillaaaaaaariouth?'
