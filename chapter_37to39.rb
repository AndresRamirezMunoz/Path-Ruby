#Float methods
p 2.5.floor
p 2.5.ceil

p 3.4.round()
p 3.6.round()
p 3.14159.round(3)

p -2.5.abs


#Assignments and reassignments
#For all arithmetic operators
a = 10
a = a + 10
p a

a = 10
a += 10
p a

#Introduction to blocks times
n=0
10.times{ n += 1 }
p n

puts

10.times do |i|
    p 3 * (i + 1)
end

