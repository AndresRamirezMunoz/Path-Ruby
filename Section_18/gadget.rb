class Gadget

  attr_accessor :username
  attr_reader :production_number
  #attr_reader :production_number, :username
  attr_writer :password

=begin

  def info
    "Gadget #{@production_number} has the username #{@username}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is mande from the #{self.class} class and it has the Id #{self.object_id}"
  end

  def username
     @username
  end

  def username= (new_value)
    @username = new_value
  end

  def production_number
    @production_number
  end

  def password= (new_value)
    @password = new_value
  end

  def initialize
    @username = "User #{rand(1..100)}"
    @password = "1234"
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
  end
=end

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = "#{("a".."z").to_a.sample}-#{rand(1..99)}"
  end


end

g1 = Gadget.new("g1", "123")
g2 = Gadget.new("g2", "0123")
p g1.username, g1.production_number
p g2.username, g2.production_number


=begin
phone = Gadget.new
laptop = Gadget.new
puts "-"
p phone.to_s
p laptop.to_s
puts

p phone.username
p phone.production_number
puts

phone.username = ("rubyman")
p phone.username
puts
phone.password=("pass")
=end
