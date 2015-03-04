class Order < ActiveRecord::Base
  belongs_to :user
  has_many :product_orders
  has_many :products, through: :product_orders

  def sum_prices
    prices = self.products.map {|product| product.price}
    prices.reduce(:+)
  end

  def count_items
    self.products.length.to_s
  end

  def format_price
    new_price = total_price.to_s
    new_price << '0' if new_price.split('.').last.length < 2
    new_price.insert(0,'$')
  end

end
