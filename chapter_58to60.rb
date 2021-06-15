#Methods
def my_method1
  puts "This a test"
  puts "This is a metod"
end

my_method1
puts

#Local vaiables
test = "This a test out method2"
def my_method2
  test = "This a test in method2"
  puts test
end

my_method2
puts test
puts

#Methods parameter  and arguments

def praise_persona(name,age)
  puts "#{name} is amazing!"
  puts "His age is #{age}"
end

praise_persona("Spider-man", 25)
