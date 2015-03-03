class Product < ActiveRecord::Base

  def format_price
    new_price = price.to_s
    new_price << '0' if new_price.split('.').last.length < 2
    new_price.insert(0,'$')
  end

end
