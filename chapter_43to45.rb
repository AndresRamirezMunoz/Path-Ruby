#mutiline string
words = <<MLS
    this is a line
    this is a other line

MLS
p words
print words

#Escape characters
puts "This is a example 'example'"
puts 'This is a example "example"'
puts "This is a example \"example\""
puts 'This is a example \'example\''
puts
result = "Add a line break\nright here"
puts result
p result
puts "\tInsert a tab "


#Singles vs doubles quotes quotes
puts "Helo\nworld"
puts 'Helo\nworld'
hello = "Helo\nworld"
puts "#{hello}"
puts '#{hello}'
