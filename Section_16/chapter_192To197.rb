#read file
#Run on terminal
File.open("novel.txt").each do |line|
  puts line
end
puts

#Write file
#Run on terminal
#                            "w"
#                            "a"
File.open("myFisrtfile.txt", "a") do |file|
  file.puts "I'm creating this from Ruby"
  file.write "no line break here!"
  file.puts "Pretty cool!"
end
puts

#rename and delete a file
File.rename("myFisrtfile.txt", "myFisrtfile1.txt")
if File.exist?("myFisrtfile1.txt")
  #File.delete("myFisrtfile1.txt")
end
puts

#the load methos
#Run on terminal
puts "this main file"
if File.exist?("./load.rb")
  load "./load.rb"
end
puts "Alright!"
puts

#requiere and requiere_relative
#Run on terminal
require "./load.rb"
require_relative "./load"
