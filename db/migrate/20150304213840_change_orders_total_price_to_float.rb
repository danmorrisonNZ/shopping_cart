class ChangeOrdersTotalPriceToFloat < ActiveRecord::Migration
  def change
    change_column :orders, :total_price, :float
  end
end
