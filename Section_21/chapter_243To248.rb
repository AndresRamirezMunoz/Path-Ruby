#Inheritance
#Subclasses

class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name es #{name} and I am #{age} years old."
  end
end

class Manager < Employee
  def yell
    "Who's the boos? I'm the boss!"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end
    def yell
    "I'm working"
  end

  def introduce
    "My name es #{name} and I'm a manger"
  end
end

bob  = Manager.new("Bos",34)
dan  = Worker.new("Dan",24)

p  bob.introduce
p  dan.introduce
puts

# Check Inheritance Hierarchy

p Manager.ancestors
p Manager.superclass

p Manager <  Employee
p Worker > Employee
puts

# The .is_a? and .instance_of? Predicate Methods

puts bob.is_a?(Manager)
puts bob.is_a?(Employee)
puts bob.is_a?(Worker)
puts bob.is_a?(Object)

puts

puts bob.instance_of?(Manager)
puts bob.instance_of?(Employee)
puts bob.instance_of?(Worker)
puts bob.instance_of?(Object)
puts

#Exclusive Instance Methods in Subclasses
p bob.yell
p dan.clock_in("12:00PM")
p dan.yell
puts

#Override Methods in a Subclass
sally  = Manager.new("Sally", 45)
p sally.introduce
