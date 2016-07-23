class Product
  attr_reader :price, :code, :rule

  def initialize(params = {})
    @price = params[:price]
    @code  = params[:code]
    @rule  = params[:rule]
  end
end
