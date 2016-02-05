require './currency.rb'


geoffs_money = Currency.new("$", "2.00")
dads_money = Currency.new("$", "2.00")
#moms_money = Currency.new("JYN", "4.00")

puts "#{geoffs_money.codify} #{geoffs_money.quantify}"

# puts geoffs_money == dads_money #true
#
# puts geoffs_money + dads_money #4.0
#
# # puts geoffs_money - dads_money #0.0
# #
# # puts geoffs_money * dads_money #4.0
# #
# # puts geoffs_money / dads_money #1.0
