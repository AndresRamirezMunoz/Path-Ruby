#the until keyword
i = 1
until i > 10
  puts i
  i += 1
end
puts

#Fizzbuzz
def fizzbuzz(num)
  n = 1
  while n < num
    if n % 15 == 0
      puts "FizzBuzz #{n}"
    elsif n %  3 == 0
      puts "Fizz #{n}"
    elsif n % 5 == 0
      puts "Buzz #{n}"
    end
    n += 1
  end
end

fizzbuzz(45)
puts

#Statement modifiers
number = 1000
if number > 500
  puts "Huge number!"
end

puts "Huge number!" if  number > 500 && false
puts

#Conditionals assignament
y = nil
p y
y ||= 5
p y

greeting = "Hello"
extractinn = 5
letter = greeting[extractinn]
p letter
letter ||= "Not found"
p letter
