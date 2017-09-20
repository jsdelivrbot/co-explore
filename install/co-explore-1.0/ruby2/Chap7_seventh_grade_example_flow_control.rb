puts 'Mrs. Gabbard>> Hello, and welcome to seventh grade English!'
puts 'Mrs. Gabbard>> My name is Mrs. Gabbard. And your name is?'
name = gets.chomp

if name == name.capitalize
  puts 'Mrs. Gabbard>>  Welcome' + name + 'have a seat.'
else
  puts 'Mrs. Gabbard>>' + name + '? You mean ' + name.capitalize + ',right?'
  puts 'Don\'t you know how to spell your name?'
  reply = gets.chomp
  if reply.downcase ==  'yes'
    puts 'Mrs. Gabbard>> Hmmm, ok sit down!'
  else
    puts 'Mrs. Gabbard>> GET OUT!'
    second_reply = gets.chomp
    if second_reply.upcase.include? "!"
      puts 'Mrs. Gabbard>> I am taking you to the principal!'
    else
      puts 'Mrs. Gabbard>> Ok, you may go now!'
    end
  end
end
