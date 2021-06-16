#the flatten method on an array
registration = [
              ["Bob", "Dan", "Jack"],
              ["Rick", "Susan", "Molly"],
              ["Pierce", "Sean", "George"]
]

p registration
p registration.flatten
puts

#the zip method on an array
names = ["Bo", "Moe", "Joe"]
registrations = [true, false,false]
p names.zip(registrations)
p [1, 2, 3].zip( names, registrations)
puts

#the sample method
flavors = ["chocolate", "Vanilla", "Strawberry", "Rum Raisin"]
p flavors.sample
p flavors.sample(2)
puts

#Multiply an array witn an asterisk
p flavors * 4
puts

#Array union combine array and exclude duplicates
p [1, 2, 3 ,4] | [4, 5, 6, 7] | [7, 6, 4, 8]
puts

# Remoove array  items that exist in another array
p [1, 2, 3, 4] - [3 ,4]
puts

#Array intersection with  the ampersand symbol
p [1, 2, 3, 4] & [2, 3 ,4]
puts

