#object pointers and objects copies
a = [1, 2, 3]
b = [1, 2, 3]
c = a.dup
p a.object_id == b.object_id
p a.object_id == c.object_id
a.push(4)
c.push(44)
p a, c
puts

#splat arguments
def sum(*numbers)
  sum = 0
  numbers.each { |num| sum+= num}
  sum
end

p sum(5, 6, 7, 8)
puts

#the any? and all? methos
p [1, 2, 3, 4, 5, 6].any? { |number| number.even? }
p [1, 2, 3, 4, 5, 6].any? { |number| number % 2 == 0 }
puts
p [0, 2, 4, 6, 8, 10].all? { |number| number.even? }
p [1, 2, 3, 4, 5, 6].all? { |number| number % 1 == 0 }
puts

#the find and detect methods
words = ["dictionary", "refrigerator", "platypus", "microwave"]
p words.find { |word| word.length > 8 }
p words.detect { |word| word.length > 8 }

lottery= [4, 3, 6, 15, 29, 16]
p lottery.find { | number | number.odd? }
p lottery.detect { | number | number.odd? }
p lottery.reverse.find {|num| num.odd?}
p lottery.reverse.detect {|num| num.odd?}
puts

#the uniq method on an array
numbers = [1, 2, 3, 4, 5, 6, 6]
p numbers.uniq
p numbers

def custom_uniq(array)
  final = []
  array.each {|element| final << element unless final.include?(element)}
  final
end
p "custom"
p custom_uniq(numbers)
puts

#the compact method
a = [1, 2, 3, nil, 5, nil, false, 8]
p a.compact
p a

def custom_compaq(array)
  final = []
  array.each {|element| final << element if !element.nil?}
  final
end
puts "custom"
p custom_compaq(a)
puts

#the inject and reduce method on an array
result = [10, 20, 30, 40].inject(0) do |previous, current|
#result = [10, 20, 30, 40].reduce(0) do |previous, current|
  puts "previus: #{previous}"
  puts "current: #{current}"
  previous + current
end
p result
puts
result = [3, 4, 5, 6, 7].inject(1) do |previous, current|
#result = [3, 4, 5, 6, 7].reduce(1) do |previous, current|
  puts "previus: #{previous}"
  puts "current: #{current}"
  previous * current
end
p result
puts

