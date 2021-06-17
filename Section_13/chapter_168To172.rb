#Hashes and methods arguments
def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end
p calculate_total_1(24.99, 0.18, 0.07)

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tip_amount + tax_amount
end
bill = {price:24.99, tax:0.07, tip:0.18 }
p calculate_total_2(bill)
puts

#the delete method
cars ={toyota: "camry", chevrolet: "aveo", ford: "f-150", kia: "soul", reanult: "twingo"}
p cars
removed = cars.delete(:toyota)
p cars
p removed
puts

#the select and reject method on a hash
recipe = {sugar: 6, flour: 10, salt: 2, pepper: 4}
high = recipe.select{|ingrediente, teaspoons| teaspoons >5 }
p high
high = recipe.reject{|ingrediente, teaspoons| teaspoons >5 }
p high
result_s = recipe.select{|ingrediente, teaspoons| ingrediente.to_s.include?("s") }
p result_s
puts

#the merge method
market = {garlic: "3 cloves", tomatoes: "5 batches", milk: "10 gallons"}
kitchen = {bread: " 2 loaves", yogurt: "20 cans", milk: "100 gallons"}

p market.merge(kitchen)
market.merge!(kitchen)
p market
puts

#exercise

def word_count(string)
  result= Hash.new(0)
  array=string.split(" ")
  array.each do |element|
    result[element]+=1
  end
  result
end

p word_count("Once upon a time in a land far far away")
