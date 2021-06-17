#Create hash with default value
fruits_prices = Hash.new("Not found")
fruits_prices[:banana]= 1.05
fruits_prices[:orange]= 0.69
fruits_prices[:kiwi]= 10.99

p fruits_prices[:banana]
p fruits_prices[:steak]

fruits_prices.default = "nothing"

p fruits_prices[:banana]
p fruits_prices[:steak]
puts

#convert hash to array and vice versa
p fruits_prices.to_a
p fruits_prices.to_a.flatten
p fruits_prices.to_h
puts

#the sort and sort_by methods ona has
p fruits_prices.sort
p fruits_prices.sort.reverse
puts
p fruits_prices.sort_by{ |fruit, price| fruit }
p fruits_prices.sort_by{ |fruit, price| price}
puts

#the key? and value? methods
cars ={toyota: "camry", chevrolet: "aveo", ford: "f-150", kia: "soul"}
p cars.key?(:toyota)
p cars.key?(:ferrari)
p cars.value?("aveo")
p cars.value?("323")
puts


cars[:nissan]="versa"
cars.store(:renault,"twingo")
p cars
