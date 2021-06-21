#Private methods

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

phone = Gadget.new("User", "passsword")
p phone.to_s
#p phone.generate_production_number
puts

#Protected methods
class Car

  def initialize(age, miles)
    base_value= 2000
    age_deduction = age * 100
    miles_deduction= (miles / 10.to_f)
    @value = base_value - age_deduction -miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is betther" : "Your car is worse"
  end


  protected

  def value
    @value
  end
end

civic = Car.new(3, 30000)
fiat = Car.new(3, 20000)
p civic.compare_car_with(fiat)
puts

#add validation to setter methods

phone = Gadget.new("rubyfan20","12345")
puts phone.password

phone.password = 123456
puts phone.password

phone.password = "test"
puts phone.password

phone.password = "123456"
puts phone.password
