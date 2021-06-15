#Nested if statements
def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "brakfast"
      "Cereal"
    elsif time_of_day == "lunch"
      "Sandwich"
    elsif time_of_day == "dinner"
      "Chicken  nuggets"
    end
  elsif time_of_week == "weekend"
    if time_of_day == "breakfast"
      "French toast"
    elsif time_of_day == "lunch"
      "BBQ chikenn pizza"
    elsif time_of_day == "dinner"
      "Steak"
    end
  end
end

p  meal_plan("weekday", "lunch")
p  meal_plan("weekend", "dinner")
puts

#the .respond_to? method
num = 1000
if num.respond_to?(:next)
  num = num.next
end
p num
puts

#The ternary operator
if 1 < 2
  puts "Yes, it is"
else
  puts "No, it's not"
end

puts 1 < 2 ? "Yes, it is" : "no, it's not"

#Default or optional parameters
def make_phone_call (number, intertional_code=57, area_code=36)
  puts "Calling #{intertional_code}-#{area_code}-#{number}"
end

make_phone_call(34234324)
make_phone_call(34234324, 44)
make_phone_call(34234324, 44, 45)

#Call a method from another method
def add (a,  b)
  a + b
end

def subtract (a, b)
  a - b
end

def multiply (a, b)
  a * b
end

def calulator(a, b, operation="add")
  if operation == "add"
    add(a ,b)
  elsif operation == "subtract"
    subtract(a, b)
  elsif operation == "multiply"
    multiply(a ,b)
  else
    "that's not a math operation"
  end
end

p calulator(5, 4)
p calulator(5, 4, "subtract")
p calulator(5, 4, "multiply")
p calulator(5, 4, "bla")

