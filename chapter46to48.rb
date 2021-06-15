#Equality and inequality operators with strings
a = "Hello"
b = "hello"
c = "Hello"

p a == c
p a == b

p "Z" < "a"

#Concatenata Strings
name = "Jonh "
last_name= "Smith"
p name + last_name
p name << last_name

p name.prepend(last_name)
p name.concat(last_name)

name += last_name
p name

puts

#Length and size methods
p name.length
p name.size
