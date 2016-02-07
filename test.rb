require './currency.rb'


geoffs_money = Currency.new("$1000")
dads_money = Currency.new(2.00, :USD)
#moms_money = Currency.new("JYN", "4.00")

puts "#{geoffs_money.codify} #{geoffs_money.quantify}"

puts geoffs_money

# puts geoffs_money == dads_money #true
#
c = geoffs_money + dads_money

puts geoffs_money + dads_money #4.0

puts c.class

puts c

puts geoffs_money * 3

 # puts geoffs_money.class
#
# # puts geoffs_money - dads_money #0.0
# #
# # puts geoffs_money * dads_money #4.0
# #
# # puts geoffs_money / dads_money #1.0
