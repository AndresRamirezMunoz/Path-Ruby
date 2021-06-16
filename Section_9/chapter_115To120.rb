#each with index
color = ["red", "blue", "green", "yellow"]
color.each_with_index do |color, pos|
  puts "Color: #{color} and position: #{pos}"
end

#Exercise

sum = 0
numbers = [1, 2, 3, 4, 5]
numbers.each_with_index do |number, index|
sum += number * index
end
puts sum
puts

numbers = [-1, 2, 1, 2, 5, 7, 3]
numbers.each_with_index do |number, index|
  if index > number
    puts "#{index * number}, #{number}"
  end
end
puts

#the map or collect methods
numbers = [1, 2, 3, 4, 5]
square = []
numbers.each { |number| square << number ** 2 }
p square
p numbers.map { |number| number ** 2}
puts

fahr_temperatures = [105, 73, 40, 18, -2]

celsius = fahr_temperatures.collect do |temp|
  minus32 = temp - 32
  minus32 * (5.0/9.0)
end
p celsius
puts

#Iteration array with while or until loops
animales = ["Lion", "Zebra", "Baboon", "Cheetah", "Elephant"]
i = 0
while i < animales.length
  puts i
  puts animales[i]
  i += 1
end
puts

#the break keyword
prizes = ["Pyrite", "Pyrite", "Pyrite", "Pyrite", "Gold", "Pyrite"]
i = 0
while i < prizes.length
  current = prizes[i]
  if current == "Gold"
    puts "Yay, found gold"
    break
  else
    puts "#{current} is not gold"
  end
  i += 1
end
puts

numbers = [1, 2, 3, "Hello", 4, 5, 7, 8]
numbers.each do |num|
  if num.is_a?(Integer)
    puts "Square of #{num} is #{num ** 2}"
  else
    puts "that's not valid number"
    break
  end
end
puts

#the next keyword
numbers.each do |num|
  unless num.is_a?(Integer)
    next
  else
    puts "Square of #{num} is #{num ** 2}"
  end
end
puts
