#Structs
require_relative 'app_store'
class Gadget

  attr_accessor :username, :password
  attr_reader :production_number, :apps
  #attr_reader :production_number, :username
  #attr_writer :password


  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def password=(new_password)
    if validate_password(new_password)
      @password = new_password
    end
  end

  def to_s
    "Gadget #{production_number} has the username #{username}.
    Its made from the #{self.class} clas and it has the ID #{self.object_id}."
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app =apps.find {|installed_app| installed_app.name ==name}
    apps.delete(app) unless app.nil?
  end

  def reset(username, password)
    self.username = username
    self.password = password
    self. apps = []
  end

  private

  attr_writer :apps

  def generate_production_number
    start_digits = rand(10000..999999)
    end_digits = rand(10000..999999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2021"
    5.times {middle_digits << alphabet.sample}
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end


end

g = Gadget.new("User", "passsword")
p g.apps

g.install_app(:Chat)
g.install_app(:Twitter)
g.install_app(:Chat)
p g.apps
puts
g.delete_app(:Chat)
p g.apps
puts

#Monkey patching I, II and III
class Array

  def sum
    total = 0
    self.each { |element| total += element if element.is_a?(Numeric)}
    total
  end
end


p [1, 2, 3, 4, 5, 6, "2"].sum

class String

  def alphabet_sum
    alphabet = ("a".."z").to_a
    sum = 0

    self.downcase.each_char do |character|
      if alphabet.include?(character)
        numeric_value = alphabet.index(character) + 1
        sum += numeric_value
      end
    end
    sum
  end
end

puts "Abcd".alphabet_sum
puts "zzz".alphabet_sum
puts


class Hash

  def identify_duplicate_values
    values = []
    duples = []

    self.each_value do |value|
      values.include?(value) ? duples << value : values << value
    end
    duples.uniq
  end
end

scores = {a: 100, b: 100, c: 83, d: 50, e: 13, f: 6, g: 100, h: 13, i: 50, j: 80}
p scores.identify_duplicate_values
puts
puts

class Book

  def initialize(titile, author, pages)
    @title = titile
    @author = author
    @pages = pages
  end
end

class Book
  def read
    1.step(@pages, 10) { |page|  puts "Reading page #{page}..."}
    puts "Done! #{@title} was a great book!"
  end
end

animal_farm = Book.new("Animal farm", "George Orwell", 50)
p animal_farm.read
puts

#Class variables and Class methods

class Bicycle
  @@maker = "Biketech"
  @@count = 0

  #def Bicycle.description
  def self.description
    "hi tjere, i'm the blueprint for bicycle!"
  end

  def self.count
    @@count
  end

  def initialize
    @@count += 1
  end

end


puts Bicycle.description
puts Bicycle.count

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new
puts Bicycle.count
