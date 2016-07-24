require_relative "product"
require_relative "checkout"
require_relative "rule"

FR1 = Product.new(price: 3.11, code: :FR1, rule: Rule.new(threshold: 0, reduction: 1.0, until: 2))
AP1 = Product.new(price: 5.00, code: :AP1, rule: Rule.new(threshold: 2, reduction: 0.5, until: 1))
CF1 = Product.new(price: 11.23, code: :CF1, rule: nil)

class Shop
  def cashier(basket)
    checkout = Checkout.new
    basket.each { |item| checkout.add_item item }
    checkout.total_sum
  end
end
