FR1 = :fruit
AP1 = :apple
CF1 = :coffee

FRUIT = 3.11
APPLE = 5.00
COFFEE = 11.23

def cashier(basket)
  # TODO: Write a program who returns the total price of the basket's items
  fruits = basket.select { |item| item == FR1 }.length
  apples = basket.select { |item| item == AP1 }.length
  coffee = basket.select { |item| item == CF1 }.length

  fruits = (fruits + 1) / 2
  apples > 2 && apples = (apples - 2) / 2.0 + 2

  FRUIT * fruits + APPLE * apples + COFFEE * coffee
  # 19.34
end
