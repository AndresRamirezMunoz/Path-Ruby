#nil object represents nothing
puts nil
p nil

#String interpolation
a = 100
a = a.next
p a.to_s

#error
#p "She has " + a

p "She has " + a.to_s
p "She has #{a}"

p "2 + 3 = #{2 + 3}"

#gets, run on terminal
puts "Enter your name"
name = gets.chomp

puts "Enter your age"
age = gets.chomp.to_i

puts "Your name is #{name}, and you are #{age} years old"
