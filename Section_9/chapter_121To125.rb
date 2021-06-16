#the reverse method on an array
p [1, 2, 3, 4].reverse
p ["A", "B", "C", "D"].reverse
puts

#the sort method on an array
numbers = [5, 8, 9 ,3, 1, 2, 3, 5]
p numbers.sort
puts

#the concat method on an array
p [1, 2, 3, 4] + [5, 6, 7]
p [1, 2, 3, 4].concat([5, 6, 7])
puts

#the max and min methods on an array
p [1, 2, 3, 4].max
p [1, 2, 3, 4].min

p ["A", "a", "B", "C"].max
p ["A", "a", "B", "C"].min
puts

#the include? method
numbers = [5, 8, 9 ,3, 1, 2, 3, 5]
p numbers.include?(0)
p numbers.include?(1)
p numbers.include?("1")
puts

#index  and find index method
color = ["red", "blue", "green", "yellow"]
p color.index("red")
p color.index("black")
