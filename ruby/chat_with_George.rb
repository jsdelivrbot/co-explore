=begin 
Let's immagine that we're talking to child and aking him to do someting.
His name is George and he's 2 yo. You may ask him anything and see wat he does. 
The program will break at if you ask him to stop or to sleep.
=end

while 'hecilopter' > 'capertiller' #true
  puts 'What would you like to ask George to do?'
  request = gets.chomp
  puts 'You say: George, please ' + request + ' now, baby."'
  puts 'George\'s response: '
  puts '"George ' + request + '."'
  puts '"Papa ' + request + ', too."'  
  puts '"Mama ' + request + ', too."'
  puts '"Ruby ' + request + ', too."'
  puts '"Ally ' + request + ', too."'
  puts '"Yuly ' + request + ', too."'
  
puts #puts blank space
  if request == 'stop'
    puts '*Yuliya\'s controller* >> This prints when IF condition is met'
    break

  elsif request == 'sleep'
    puts '*Yuliya\'s controller* >> This is the result of the ELSIF'
    break
 
  end
  puts #puts blank space
end
