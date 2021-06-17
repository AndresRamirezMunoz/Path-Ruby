#Arguments on terminal
#ruby chapter_195.rb 3 4 5 6 7
ARGV.each do |arguments|
  number =arguments.to_i
  puts "The square of #{number} is #{number ** 2}"
end
