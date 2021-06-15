#Return values
def add_two_numbers(num1, num2)
  puts "ok, solving your math problem"
  num1 + num2
  #return num1 + num2
end

p add_two_numbers(5, 6)
puts

#Return values 2
def return_string
  "What will be the return value here?"
end

def return_guess
  puts "Blah blah"
end

p return_string
p return_guess
puts

#if Statement

if 5 < 2
  puts "that math statement is true"
end
word ="sun"
if word.include?("sun")
 puts "its true"
end
