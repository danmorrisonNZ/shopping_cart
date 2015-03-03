class CreateProductOrders < ActiveRecord::Migration
  def change
    create_table :product_orders do |t|
      t.belongs_to :orders, index: true
      t.belongs_to :products, index: true
      t.timestamps null: false
    end
  end
end
