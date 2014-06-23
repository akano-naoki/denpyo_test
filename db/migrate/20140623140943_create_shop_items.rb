class CreateShopItems < ActiveRecord::Migration
  def change
    create_table :shop_items do |t|
      t.string :item_code
      t.integer :shop_id
      t.float :cost_price
      t.integer :sell_price
      t.text :description
      t.integer :stock_count
      t.integer :ordering_count
      t.timestamps
    end
  end
end
