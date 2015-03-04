class Product < ActiveRecord::Base

  has_many :product_orders
  has_many :orders, through: :product_orders
  validates :name, uniqueness: true
  validates :name, :price, presence: true

  def format_price
    new_price = price.to_s
    new_price << '0' if new_price.split('.').last.length < 2
    new_price.insert(0,'$')
  end

end
