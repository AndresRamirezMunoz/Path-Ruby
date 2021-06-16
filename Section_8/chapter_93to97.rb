#The fetch method
names = ["Tom", "Camero", "Bob"]
p names[2]
p names.fetch(2)

p names[100]
p names.fetch(100, nil)
p names.fetch(100, false)
puts

#Access sequence array elements with bracket
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
p numbers[0, 5]
p numbers[0, 15]
puts

#Access sequence array elements with a range
p numbers[0..4]
puts

#Accessm multiples arrays elements with the values
channels = ["CBS", "FOX", "NBC", "ESPN", "UPN"]
p channels.values_at(0, 2, 4, 5)
p channels.values_at(0, -1)
puts

#slice method
p numbers
p numbers.slice(3)
p numbers.slice(100)
p numbers.slice(2, 4)
