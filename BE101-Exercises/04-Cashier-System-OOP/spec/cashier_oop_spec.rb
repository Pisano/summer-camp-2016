require "app"

describe "Cashier system" do
  it 'is $19.34 for [FR1, AP1, FR1, CF1]' do
    shop = Shop.new
    basket = [FR1, AP1, FR1, CF1]
    expect(shop.cashier(basket)).to eq(19.34)
  end

  it 'is $3.11 for [FR1, FR1]' do
    shop = Shop.new
    basket = [FR1, FR1]
    expect(shop.cashier(basket)).to eq(3.11)
  end

  it 'is $6.22 for [FR1, FR1, FR1]' do
    shop = Shop.new
    basket = [FR1, FR1]
    expect(shop.cashier(basket)).to eq(3.11)
  end

  it 'is $16.61 for [AP1, AP1, FR1, AP1]' do
    shop = Shop.new
    basket = [AP1, AP1, FR1, AP1]
    expect(shop.cashier(basket)).to eq(16.61)
  end
end
