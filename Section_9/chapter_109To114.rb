#Review of blocks
3.times { |i| puts "Hi #{i}"}
puts
5.times do |n|
  square = n*n
  puts n , square
end
puts

#the each method
candies = ["Sour patch kids", "Milky way", "Airheads"]
candies.each do |candy|
  puts candy
end
puts
candies.each {|candy| puts candy }
puts


def print(array)
  odds = []
  evens = []
  array.each { |number|  number.even? ? evens << number : odds << number }
  p odds
  p evens
end

print([1, 2, 4, 5, 6, 7, 8, 4, 5, 6, 34])
puts

#each with each
shirt = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirt.each do |shirt|
  ties.each do |tie|
    puts "Option: #{shirt} and a #{tie}"
  end

end
puts


#the for loop
numbers = [1, 2, 3, 4]
for num in numbers
  puts num
end
puts num


