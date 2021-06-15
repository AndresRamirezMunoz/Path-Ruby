#Overwrite characters in string
thing = "rocket ship"
thing[0] ="R"
thing[7] ="S"
p thing

thing[7,4] = "Toy"
p thing

thing[7..10] = "Ship"
p thing
puts

#Case methods
puts "hello".capitalize
puts "hEllO".capitalize
puts "hEllO world".upcase
puts "hEllO world".downcase
puts "hEllO world".swapcase
puts

#The reverse method
p "sunday".reverse


p "sunday".reverse.upcase
