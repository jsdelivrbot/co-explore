=begin
You are talking with your grandma. She is really deaf. Try to tell her something.
If she doesn't hear try to shout it out. See what happens. If you want to leave,
just say "BYE" 
=end

puts 'Hello, Granny!'
puts 'Hello, Sonny! What ya been up to?'

while true
  your_phrase = gets.chomp
  puts #extra line

  if your_phrase == "BYE"
     puts 'Grandma : Bye-bye, sugar!'
       break
  elsif
    your_phrase == your_phrase.upcase
    random_year = rand(1930..1950)
    puts "NO, NOT SINCE #{random_year} , SONNY!"
    puts #extra line
  else
    puts 'Grandma :  HUH?? SPEAK UP SONNY'
  end
end
