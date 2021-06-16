#The insert moethod on a string
typo = "GeorgWashington"
typo.insert(5, "2")
p typo
typo.insert(-1, "n")
p typo


#the squeeze method on a string
sentence = "thhhhhheee    aardvark jummped  ovver the fence"
p sentence.squeeze
p sentence.squeeze("h")
p sentence.squeeze("e")
p sentence.squeeze(" ")

def custom_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index { |char, index| char == chars[index + 1] ? next : final << char }
  final
end

p "custom"
p custom_squeeze(sentence)
puts

#the clear method on a string
word = "blah blah blah"
p word
word.clear
p word
puts

#the delete methos on a string
word = "Hello word"
p word.delete("e")

def custom_delete(string, character)
  new_string = ""
  string.each_char { |char| new_string << char unless character.include?(char) }
  new_string
end

p "custom"
p custom_delete(word, "e")
