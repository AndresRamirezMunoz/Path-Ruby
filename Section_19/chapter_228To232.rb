#Mixins II
module Purchaseable

  def purchase(item)
    "#{item} has been purchased!"
  end

end
=begin
class Bookstore
  include Purchaseable
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end
=end

class Bookstore
  prepend Purchaseable
  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

class Supermarket
  include Purchaseable
end

class CornetMart < Supermarket
  def purchase(item)
    "Yey! A great purchase of #{item} from your corner mart!"
  end
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")

shoprite = Supermarket.new
p shoprite.purchase("Ice cream")

quickstop = CornetMart.new
p quickstop.purchase("Slim jim")
puts

#the ancestor method in depth
p CornetMart.ancestors
p Bookstore.ancestors


bn = Bookstore.new
p bn.purchase("1984")
puts

#the prepend keyword
p Bookstore.ancestors
p bn.purchase("1985")
puts

#The extend keyword
module Announcer

  def who_am_i
    "The name of this clases is #{self}"
  end
end

class Dog
  extend Announcer
end

class Cat
  include Announcer
end

p Dog.who_am_i
p Cat.new.who_am_i
puts

#Mixins III
#Enumerable
class ConveienceStore
  include Enumerable

  attr_reader :snacks

  def initialize
    @snacks = []
  end

  def add_snack(snack)
    snacks << snack
  end

  def each
    snacks.each do |snack|
      yield snack
    end
  end

end
puts "---"
bodega = ConveienceStore.new
bodega.add_snack("Doritos")
bodega.add_snack("Oreos")
bodega.add_snack("Jolly Ranchers")

bodega.each { |snack| puts "#{snack} is deliocious!" }
puts
p bodega.any? { |snack| snack.length >  3 }
p bodega.all? { |snack| snack.length >  30 }
puts
p bodega.map{|snack| snack.upcase}
p bodega.sort
