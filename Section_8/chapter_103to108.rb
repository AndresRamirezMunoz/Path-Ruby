#the pop method
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
last_item = arr.pop
p last_item
p arr
last_item = arr.pop(2)
p last_item
p arr
puts

#The shift and unshift metods
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p arr
extract = arr.shift
p extract
p arr
extract = arr.shift(2)
p extract
p arr
arr.unshift(1,2)
p arr
puts

#Equality and inequality
a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [1, 2, 3]
d = [1, 2, 3]

p a == b
p a == c
p a != d
puts

locations1 = ["House", "Airport", "Bar"]
locations2 = ["House", "Airport", "Bar"]
locations3 = ["House", "Airport", "Zoo"]
p locations1 == locations2
p locations1 == locations3
puts

#the spacheship operator
p 5 <=> 5
p 5 <=> 2
p 5 <=> 10
p 5 <=> [1, 2, 3]
p [1, 2, 3] <=> [1, 2, 3]
p [1, 2, 3] <=> [1, 2, 4]
p [1, 2, 3] <=> [1, 2, 2]
puts

#convert range to array
letters_range = 1..10
p letters_range
letters_array = letters_range.to_a
p letters_array
p letters_array[5..7]
puts

#The is_a?
puts letters_array.is_a?(Array)
puts letters_array.is_a?(String)

