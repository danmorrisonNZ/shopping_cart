class Order < ActiveRecord::Base
  belongs_to :user
  has_many :product_orders
  has_many :products, through: :product_orders

  def sum_prices
    prices = self.products.map {|product| product.price}
    prices.reduce(:+)
  end

  def count_items
    self.products.length
  end


end
