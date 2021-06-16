#intro to ranges
nums = 1..10

p nums
p nums.first
p nums.last
p nums.first(4)
p nums.last(4)

#puts 1..10.first(3)
puts (1..10).first(3)

alphabet = "a".."z";
puts alphabet.first(5)
puts

#The size method on a range
p nums.size
puts

#checj if a value is in a range
p nums.include?(2)
p nums.include?(8)
p nums === 8
puts

#Ramdon numbers
puts rand
puts rand.round(2)
puts rand(100)
puts rand * 100
puts rand(0..100)
