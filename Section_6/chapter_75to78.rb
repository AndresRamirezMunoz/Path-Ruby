#The case statement
def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce!"
  when "Suchi"
    "Great choice"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling"
  when "Tofu", "Brussel sprouts"
    "Disgusting!"
  else
    "I don't know about that food"
  end
end

p rate_my_food("pizza")
p rate_my_food("Tacos")
puts

def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end

p calculate_school_grade(85)
puts

#Negation
user = "free"
if user != "Subcribers"
  puts "Only subscribers!"
end

if ! (6 < 4)
  puts "The negation is correct!"
end
puts

#the unless keyword
password = "12345"
unless password == "12345"
  puts "Not allowed!"
else
  puts "tha's the right password"
end
puts

#the while keyword
i = 1
while i <= 10
  puts i
  i += 1
end
puts

status = true

while status
  print "Please enter username: "
  username=gets.chomp.downcase
  print "Please enter password: "
  password=gets.chomp.downcase

  if username == "boris" && password == "12345"
    puts "Entry granted"
    status = false
  elsif username == "quit" && password == "quit"
    puts "Goodbye"
    status = false
  else
    puts "Incorrect combination"
  end
end
