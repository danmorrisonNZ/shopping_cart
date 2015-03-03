class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :users, index: true
      t.integer :total_price
      t.integer :item_count

      t.timestamps null: false
    end
  end
end
