#Introduction to blocks
evens= [2, 4, 6, 8 , 10]

evens.each{|number| p number ** 3}
evens.each{|number| p number}
puts

#the yield keyword

def pass_control
  puts "This is inside the method"
  yield #Pass control from method
  puts "Now i'm back inside the method"
end

pass_control { puts "Now I'm inside the block" }
puts
pass_control do
  puts "Now I'm inside the block 2"
  puts "Now I'm inside the block 2"
end
puts

def who_am_i
  adjective = yield
  puts "i am very #{adjective}"
end

who_am_i { "handsome1"}
who_am_i { "handsome2"}
who_am_i { "handsom3"}
puts
def mutiple_pass
  puts "Inside"
  yield
  puts "Inside"
  yield
end

p mutiple_pass { "Outside"}
puts

#procs
a = [1, 2, 3]
b = [4, 5, 6]
c = [7, 8, 9]

a_cubes = a.map {|num| num ** 3 }
b_cubes = b.map {|num| num ** 3 }
c_cubes = c.map {|num| num ** 3 }

p a_cubes
p b_cubes
p c_cubes
puts "other form"

cubes = Proc.new { |number|number ** 3 }

a2_cubes, b2_cubes, c2_cubes = [a, b, c].map { |array|array.map(&cubes) }

#a2_cubes = a.map(&cubes)
#b2_cubes = b.map(&cubes)
#c2_cubes = c.map(&cubes)

p a2_cubes
p b2_cubes
p c2_cubes
puts

currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |currency| currency * 0.95 }
to_rupees = Proc.new { |currency| currency * 68.13 }
to_pesos = Proc.new { |currency| currency * 20.67 }

p currencies.map(&to_euros)
p currencies.map(&to_rupees)
p currencies.map(&to_pesos)
puts

ages = [10, 60, 92, 30, 43, 30]

is_old = Proc.new do |age|
  age >=60
end

p ages.select(&is_old)
p ages.reject(&is_old)
puts

# the block given?
def pass_control_on_condition
  puts "inside"
  if block_given?
    yield
  end
  puts "inside"
  #other form
  yield if block_given?

end

pass_control_on_condition { puts "outide"}
puts
pass_control_on_condition
puts

#Yielding with arguments
def speak_the_truth
  yield "hello"
end

def speak_the_truth2(name)
  yield "hello #{name}"
end

speak_the_truth { |name| puts name}
speak_the_truth2("Leon") { |name| puts name}
puts

#a custom each method
def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ["ana", "susan", "gorge"]
numbers = [1, 2, 3, 4, 5, 6]

custom_each(names) do |name|
  p name
end

custom_each(numbers) {|number|p number ** 2}
