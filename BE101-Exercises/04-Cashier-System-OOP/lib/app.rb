# This is how you require ruby file from the same folder:
require_relative 'shop'

# You can write some code here, but try write new classes for every object you
# need and use those classes

shop = Shop.new
basket = [AP1, CF1, AP1, AP1, FR1, AP1, FR1]
puts shop.cashier(basket)
