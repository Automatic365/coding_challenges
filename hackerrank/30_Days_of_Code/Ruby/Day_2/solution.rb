M = gets.to_f
T = gets.to_f
X = gets.to_f
tip = T * M / 100
tax = X * M / 100
price = M + tip + tax
puts "The total meal cost is #{price.round} dollars.\n"
