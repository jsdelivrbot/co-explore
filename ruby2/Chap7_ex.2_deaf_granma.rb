=begin
You are talking with your grandma. She is really deaf. Try to tell her something.
If she doesn't hear try to shout it out. See what happens.
=end

puts 'Hello, Granny!'
puts 'Hello, Sonny! What ya been up to?'

while true
  your_phrase = gets.chomp
  puts #extra line

  if your_phrase =="BYE"
    puts 'Grandma :  HUH?? SPEAK UP SONNY'
    break

  else
    your_phrase == your_phrase.upcase
    random_year = rand(1930..1950)
    puts "NO, NOT SINCE #{random_year} , SONNY!"
    puts #extra line
  end
end
