#Create hash ansd extract values
nfl_roster ={"Tom Brandy" => "New England Patriots",
            "Tony Romo" => "Dallas Cowboy",
            "Rob Gronkowski" => "New England Patriots"}

nba_roasters = { "Cleveland Cavaliers" => ["Lebron Jamnes", "Kevin Love", "Kyrie Irving"],
                "Golden State Warriors" => ["Sthepen Curry", "Klay Thomps", "Kevin Durant"]}

p nfl_roster["Tony Romo"]
p nfl_roster["Rob Gronkowski"]
p nfl_roster["Donal"]

p nba_roasters["Cleveland Cavaliers"]
p nba_roasters["Golden State Warriors" ]

puts

#Symbols as Hash keys
persona = {:name=> "Leon",
          :age => 25,
          :languages => ["ruby", "Java", "JavaScript"]}

p persona[:name]
p persona[:age]
p persona[:languages]
puts
persona = {name: "Leon",
          age: 25,
          languages: ["ruby", "Java", "JavaScript"]}

p persona[:name]
p persona[:age]
p persona[:languages]
puts

#Convert symbols to string and versa
p :name.to_s
p "name".to_sym
puts

#The fetch method on a hash
menu = {burger: 3.99, taco: 5.96, chips: 0.5}

p menu[:burger]
p menu[:taco]
p menu[:salad]
puts
p menu.fetch(:burger)
p menu.fetch(:taco)
p menu.fetch(:salad, "Not found")
p menu.fetch(:salad, 9.99)
puts

