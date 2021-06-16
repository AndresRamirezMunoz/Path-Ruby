#the select method
grades = [80, 95, 13, 76, 28, 39]
matches = grades.select do |number|
  number >=75
end
p matches
puts

words = ["level", "selfless", "racecar", "dinosaur"]
palindromes = words.select { |word| word == word.reverse }
p palindromes
puts

#the reject method
animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]
select_results = animals.select {|animal| animal.include?("c")}
reject_results = animals.reject {|animal| animal.include?("c")}
p select_results
p reject_results
puts

#unpack a multidimensional array
users = [["Bob", 25, "male"], ["Susan", 48, "female"], ["Larry", 50, "male"]]
p users
p users[0]
p users[0][0]
puts
bob, susan, larry = users
p bob
p susan
p larry
puts

#the partition method
foods = ["Steak", "Vegetable", "Steak burger", "kale", "Tofu", "Tuna Steak"]

good = foods.select { |food| food.include?("Steak")}
bad = foods.reject {|food| food.include?("Steak")}
p good
p bad
puts "---"
good1, bad1= foods.partition { |food| food.include?("Steak") }
p good1
p bad1
