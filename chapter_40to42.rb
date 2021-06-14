#upto and downto methods
5.downto(1){ |i|  puts "Countdown: #{i}"}
puts

5.downto(0) do |i|
    puts "Countdown: #{i}"
end
puts

5.upto(10) do |num|
    puts "Countup: #{num}"
end
puts
#step method
0.step(20, 5){ |number| puts number }
puts

#Create Strings
name1 = "Lois"
name2 = String.new("Lois")
p name1==name2
