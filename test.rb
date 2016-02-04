require './currency.rb'


geoffs_money = Currency.new("USD", "2.00")
dads_money = Currency.new("USD", "3.00")

puts geoffs_money == dads_money
