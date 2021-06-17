#Procs II
hi = Proc.new { puts "Hi there!"}
hi.call
2.times(&hi)
puts

#Pass a ruby  methods as Proc
p ["1", "2", "3", "4"].map { |number| number.to_i}
p ["1", "2", "3", "4"].map(&:to_i)

p [1, 2, 3, 4, 5, 6,].select{|number| number.even?}
p [1, 2, 3, 4, 5, 6,].select(&:even?)
puts

#Methods with Proc parameters
def talk_about(name, &mprc)
  puts "let me tell you about #{name}"
  mprc.call(name)
end

good_things = Proc.new do |name|
  puts "#{name} is a genius"
  puts "#{name} is a jolly good fellow"
end

bad_things = Proc.new do |name|
  puts "#{name} is a dolt"
  puts "I can't satand #{name}!"
end

talk_about("Leon", &good_things)
puts
talk_about("Leon", &bad_things)
puts

#lambda
squares_lambda = lambda {|number| number ** 2}
squares_proc = Proc.new {|number| number ** 2}

p [1, 2, 3].map(&squares_proc)
p squares_proc.call(6)

p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(6)

some_lambda= lambda{|name| "Hi #{name}"}
some_proc= Proc.new {|name| "Hi #{name}"}
p some_lambda.call("")
p some_proc.call
puts

#example
def convert(dollar, currency_lambda)
  currency_lambda.call(dollar) if dollar.is_a?(Numeric)
end

to_euros =lambda { |dollar| dollar * 0.95}
to_pesos =lambda { |dollar| dollar * 20.67}
to_rupees =lambda { |dollar| dollar * 68.13}

p convert(100, to_euros)
p convert(100, to_pesos)
p convert(100, to_rupees)

p [1, 2, 3].map(&to_pesos)
