#truthiness and falsiness
if true
  puts "That is true"
end
if 0
  puts "That is true"
end
if nil
  puts "That is true"
end
puts

#if elif
color ="green"
if color=="red"
  puts "Red is rad"
elsif color =="green"
  puts "Green is great"
end
puts

#if else

def calification_value(grade)
  if grade =="A"
    "Good job!!"
  elsif grade =="B"
    "Nice!"
  else
    "Unacceptable!"
  end
end

p calification_value("B")
