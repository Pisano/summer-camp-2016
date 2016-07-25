class Checkout
  def initialize
    @items = {}
  end

  def add_item(product)
    @items[product] = (@items[product] || 0) + 1
  end

  def total_sum
    sum = 0.0
    @items.each_pair do |item, count|
      rule = item.rule

      count -= (count - rule.threshold) / rule.until * rule.reduction if rule && count > rule.threshold
      sum += item.price * count
    end

    sum
  end
end
