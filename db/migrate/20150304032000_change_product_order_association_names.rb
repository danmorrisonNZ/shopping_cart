class ChangeProductOrderAssociationNames < ActiveRecord::Migration
  def change
    remove_reference :product_orders, :orders
    add_reference :product_orders, :order
    remove_reference :product_orders, :products
    add_reference :product_orders, :product
  end
end
