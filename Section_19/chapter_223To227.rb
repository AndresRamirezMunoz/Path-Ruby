#Modulos

module LengthCovertions
  WEBSITE = "https://www.ruby-forum.com/t/comentariar-un-bloque-de-codigo/143434/2"

  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet *12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end

end


puts LengthCovertions.miles_to_feet(100)
puts LengthCovertions.miles_to_inches(200)
puts LengthCovertions.miles_to_centimeters(300)
puts

#square rectangle circle
=begin
module Square

  def self.area(side)
    side * side
  end
end

module Rectangle

  def self.area(lenght, width)
    lenght * width
  end
end

module Circle

  PI = 3.24159

  def self.area(radius)
  PI * radius * radius
  end
end

puts Square.area(5)
puts Rectangle.area(5, 2)
puts Circle.area(5)
puts
=end

#import modules
require_relative "./circle"
require_relative "./square"
require_relative "./rectangle"

puts Circle.area(10)
puts Square.area(10)
puts Rectangle.area(10, 5)
puts

#tha math module
puts Math::PI
puts Math.sqrt(16)
puts Math.sin(90)
puts

#Mixins I
class OlympicMedal

  #<, >, <=, >=, <=>, .between?
  include Comparable

  MEDAL_VALUES = {"Gold"=> 3, "Silver" => 2, "Bronze" => 1}

  attr_reader :type

  def initialize(type, weight)
    @type = type
    @weight = weight
  end

  def <=> (other)
    if MEDAL_VALUES[type] < MEDAL_VALUES[other.type]
      -1
    elsif MEDAL_VALUES[type] == MEDAL_VALUES[other.type]
      0
    else
      1
    end
  end

end

bronze = OlympicMedal.new("Bronze", 5)
gold = OlympicMedal.new("Gold", 5)
silver = OlympicMedal.new("Silver", 5)

p bronze, gold, silver
puts bronze > silver
puts gold > silver
puts silver.between?(bronze, gold)
puts

