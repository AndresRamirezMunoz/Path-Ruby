#the wildcard symbol
phrase = "The Ruby programming .5. languaje is amazing!"
p phrase.scan(/.by/)
p phrase.scan(/.ing/)
p phrase.scan(/./)
puts

#The backslash character
p phrase.scan(/\d\./)
p phrase.scan(/\D/)
p phrase.scan(/\s/)
p phrase.scan(/\S/)
puts

#RegEx_Anchors
poem = "99 bottles af beer of the wall, 99 bottles of beer"
p poem.scan(/\A\d+/)
p poem.scan(/....\z/)
puts

#Exclude characters
sales = "I bought 9 aplples, 25 bananas, and 4 oranges at the store"
p sales.scan(/[^aeiouAEIOU]/)
puts
p sales.scan(/[^\s]/)
puts

#The sub and gsub methods
p "whimper".sub("m", "s")
p "whimperm".sub("m", "s")
p "whimpers".sub!("m", "s")
p "whimperm".gsub("m", "s")
p "(555)-555 1234".gsub(/[-\s\(\)]/, "")
puts

#rubular.com
p sales.scan(/[^a-zA-Z]\d+\s/)

