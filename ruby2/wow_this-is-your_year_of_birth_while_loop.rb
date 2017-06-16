=begin
This program will pick randomly a year and will rejoyce if
it happens to be Yuliya's or Ally' year of birth. ;-) ...
Apologies in advance if Ally's year of birth is not the exact one.....
=end

while true
  random_year = rand(2017) #do this
  puts random_year         # and do this
  if random_year == 1977
    puts "Aww, Yuliya, #{random_year} is your year of birth!!!"
    break

   elsif random_year == 1969
     puts "Hey, Yuliya, #{random_year} is Ally's year of birth!!!"
     break
  end
end
