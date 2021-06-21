#The super Keyword I and II

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

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boos? I'm the boss!"
  end

  def introduce
    result = super
    result += " I'm also a manager"
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

sally  = Manager.new("Sally", 45, 102)

p sally.name
p sally.age
p sally.rank
p sally.introduce
puts

#super witout parentheses
#super with parentheses but no arguments
#super with parentheses ans with these arguments
class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "room! room!"
  end
end

class FireTruck < Car

  attr_reader :sirens

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive(speed)
    super() + " beep! beep! I'm drivinf at #{speed} miles per hour"
  end
end

ft = FireTruck.new("Ford", 4)
p ft.drive(45)
p ft.maker
p ft.sirens
puts

# Class Variables across Subclasses
class Product
  @@product_counter = 0

  def self.counter
    @@product_counter
  end

  def initialize
    @@product_counter += 1
  end
end

class Widget < Product
  @@widget_counter = 0

  def self.counter
    @@widget_counter
  end

  def initialize
    super
    @@widget_counter += 1
  end
end

class Thingamajiq < Product
  @@thingamajiq_counter = 0

  def self.counter
    @@thingamajiq_counter
  end

  def initialize
    super
    @@thingamajiq_counter += 1
  end
end


a = Widget.new
b = Widget.new
puts Widget.counter
puts Product.counter

c = Thingamajiq.new
d = Thingamajiq.new
e = Thingamajiq.new
puts Thingamajiq.counter
puts Product.counter
puts

#Singleton Classes and Singleton Methods
class Player
  def play_game
    rand(1..100) > 50 ? "winner" : "loser"
  end

end

bob1 = Player.new
bob2 = Player.new

p bob1.play_game
p bob2.play_game
puts

def bob1.play_game
  "winner"
end

p bob1.play_game
p bob1.singleton_methods
p bob2.singleton_methods
puts

#Hash as initialize Argument I and II
class Candidate

  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details ={})
    default = {age:  0, occupation: "occupation", hobby:"hobby", birthplace:"birthplace"}
    default.merge!(details)
    @name = name
    @age = default[:age]
    @occupation = default[:occupation]
    @hobby  = default[:hobby]
    @birthplace = default[:birthplace]
  end
end

details = {age:  53, occupation: "Banker", hobby:"Fishing", birthplace:"Kentucky"}
senator = Candidate.new("Mr. Smith", details)
p senator.occupation
p senator.hobby
p senator.name
puts

senator = Candidate.new("Mr. Smith")
p senator.occupation
p senator.hobby
p senator.name
puts

senator = Candidate.new("Mr. Smith", age:  53, occupation: "Banker")
p senator.occupation
p senator.hobby
p senator.name
puts
