#The start_with? and end_with?
phrase = "The Ruby programming languaje is amazing!"

puts phrase.start_with?("t")
puts phrase.downcase.start_with?("t")

puts phrase.end_with?("ing!")
puts phrase.downcase.end_with?("h")
puts

def custom_start_whith?(string, substring)
  string[0, substring.length] == substring
end

puts custom_start_whith?(phrase, "The r")

def custom_end_whith?(string, substring)
  string[-substring.length..-1] == substring
end
puts custom_end_whith?(phrase, "ing!")
puts

#The include? method
puts phrase.include?("languaje")
puts phrase.include?("languajes")
puts

def custom_include?(string, substring)
  len = substring.length
  string.chars.each_with_index do |char, index|
    return true if string[index, len] == substring
  end
  false
end

puts custom_include?(phrase, "languajes")
puts custom_include?(phrase, "!")
puts

#Into to regular expression
puts phrase =~/T/
puts

#The scan method part I
voicemail = "I can be reached at 555-123-4567 or regexman@gmail.com"
p voicemail.scan(/[re]/)
p voicemail.scan(/[ca]/)
puts

#The scan method part II
p voicemail.scan(/\d+/)


