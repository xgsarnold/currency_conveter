require './currency.rb'
require './converter.rb'

geoffs_money = Currency.new("$25")
dads_money = Currency.new("$4")
dollars_to_yen = CurrencyConverter.new({USD: 1.0, JPY: 120.0})
#moms_money = Currency.new("JYN", "4.00")

puts "#{geoffs_money.codify} #{geoffs_money.quantify}"
puts geoffs_money * 3
puts dollars_to_yen
puts convert(geoffs_money, :JPY)
# puts dollars_to_yen.covert(geoffs_money)
# puts geoffs_money

# puts geoffs_money == dads_money #true
#
# c = geoffs_money + dads_money
#
# puts geoffs_money + dads_money #4.0
#
# puts c.class
#
# puts c



 # puts geoffs_money.class
#
# # puts geoffs_money - dads_money #0.0
# #
# # puts geoffs_money * dads_money #4.0
# #
# # puts geoffs_money / dads_money #1.0

# geoffs_money = Currency.new(1000.0, :USD)
# :UDS_to_:GBP = Conversion.new({:USD => 1.0, :GBP => .7})
# dads_money = Conversion.new()
