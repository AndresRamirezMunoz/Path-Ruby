#Add a key value pair to hash with bracket
menu = {burger: 3.99, taco: 5.96, chips: 0.5}
p menu
menu[:sandwich] = 8.99
p menu
menu[:taco] = 2.99
p menu

menu.store(:sushi, 24.99)
p menu
puts

#The length and ampty? method
list ={}
p menu.length
p menu.empty?
p list.length
p list.empty?
puts

#The each method
menu.each { |food, price| puts "#{food}: #{price}"}
puts
menu.each { |element| puts element[0]}
puts
menu.each { |element| p element}
puts

def count(hash, number)
  count=0
  hash.each { |name, value| count+=1 if number==value}
  count
end

hash ={a:5, b:6, c:3, d:5, e:3, f:3}
p count(hash, 3)
puts

#the each key and each value methods
salaries ={director: 100000, producer:200000, ceo: 300000}
salaries.each_key { |name| puts "#{name}"}
puts
salaries.each_value { |salary| puts "#{salary}"}
puts
 #Retrieve keys or values from hash as array

list = {bananas: 5, oranges: 10, carrots: 3, crackers:4}
p list
p list.values
p list.values.uniq
