#Introduction to arrays
p []
p [].class


numbers = [1, 2, 3, 4, 5, 6]
p numbers
toys = ["Cars", "Bear", "Bike"]
p toys
things = [1 ,2, "3", 4, 5.0, true]
p things
students = [["Marco", 23, true],["luis", 20, false]]
p students
p students[0]
p students[0][0]
puts

#shorthand syntax to create arrays os strings
names = %w[jack jill jhon james ]
p names
puts

#Create an array with method
p Array.new(5, "")
puts

#Access singles element by index
fruits = ["Apple", "Orange", "Grape", "Banana", "Lemon"]
p fruits[0]
p fruits[fruits.length - 1]
puts
