#Overwrite one or more array elements
fruits = ["Apple", "Orange", "Grape", "Banana", "Lemon"]
fruits[1] = "Watermelon"
p fruits
#5, 6, 7 =nill, next 8 = kiwi
fruits[8] = "Kiwi"
p fruits
#modify 3 from 4, then add ""
fruits[4, 3] = ["Coconout", "Pears", "Pineapple", "", "", ""]
p fruits
puts

# The length and size methods
p fruits.length
p fruits.size
p fruits.count("")
puts

#The empty and nil method
p fruits.empty?
p fruits.nil?
puts

#First and last method
p fruits.first
p fruits.last
#the first 2
p fruits.first(2)
#the last 3
p fruits.last(3)
puts
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
def custom_first(arr, num = 0)
  return arr[0] if num == 0
  arr[0, num]
end

p custom_first(arr)
p custom_first(arr, 5)
puts

#the push metod the sholel operator and insert
locations = ["House", "Airport", "Bar"]
p locations
locations.push("Restaurant")
locations <<  "Zoo"
locations.insert(0, "Park")
p locations
