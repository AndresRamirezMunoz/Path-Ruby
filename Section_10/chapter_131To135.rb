#The split method on a String
sentence = "hi, this is a test for path the ruby"
p sentence.split(" ")
p sentence.split
p sentence.split("i")
puts
def longest_word(sentence)
  words = sentence.split(' ')
  longest = ""
  words.each {|s| longest = s if s.length >= longest.length}
  longest
end

p longest_word("bobby loves big scary kangaroos")
puts

#Iterate over string characters
sentence = "Hello word"
sentence.each_char { |char| p char}
p sentence.split("")
puts
letters = sentence.chars
letters.each { |letter| p "#{letter}"}
puts

#the join method on an array
names = ["joe", "moe", "bob"]
p names.join("-")

result = ""
names.each_with_index do |elem, index|
  result << elem
  result << "." unless index == names.length-1
end
p result
puts

#the count method on a string
puts "hello word".count("word")
puts

#the index and rindex methos
fact = "I am very handsome"
p fact.index("I")
p fact.index("e", 7)
puts

def custom_index(string, substring)
  return nil unless string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end

p custom_index(fact, "I")
p custom_index(fact, "h")
p custom_index(fact, "z")
p custom_index(fact, "am")
puts
