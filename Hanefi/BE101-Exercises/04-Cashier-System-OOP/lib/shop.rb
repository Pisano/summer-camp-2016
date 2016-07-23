require_relative "product"

FR1 = Product.new(price: 3.11, code: :FR1, rule: nil)
AP1 = Product.new(price: 5.00, code: :AP1, rule: nil)
CF1 = Product.new(price: 11.23, code: :CF1, rule: nil)


class Shop
  # TODO: describe the Shop class

  def cashier(basket)
    # TODO: Write a program who returns the total price of the basket's items
    fruits = basket.select { |item| item == FR1 }.length
    apples = basket.select { |item| item == AP1 }.length
    coffee = basket.select { |item| item == CF1 }.length

    fruits = (fruits + 1) / 2
    apples > 2 && apples = (apples - 2) / 2.0 + 2

    FR1.price * fruits + AP1.price * apples + CF1.price * coffee
    # 19.34
  end
end
