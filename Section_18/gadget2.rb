class Gadget2
end

phone = Gadget2.new
laptop = Gadget2.new
microwave = Gadget2.new

puts phone
puts laptop
puts microwave
puts
puts phone.respond_to?(:class)
puts
#
p phone==laptop

