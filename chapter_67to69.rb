#Condition and operator &&
age = 25
ticket = "General admission"
id = false
if age >21 &&  ticket == "General admission" && id == true
  puts "Welcome to the show 1!"
else
  puts "No register!"
end
puts

#Condition and operator ||
if age >21 ||  ticket == "General admission" && id == true
  puts "Welcome to the show 2!"
else
  puts "No register!"
end
puts

#Parentheses precedence

def authenticate(rank, name, credentials)
  if (rank == "007" && name =="james bond") || credentials == "secret agent"
    puts "Access granted"
  else
    puts "Access denied"
  end
end

authenticate("006", "james bond", "secret pilot")
