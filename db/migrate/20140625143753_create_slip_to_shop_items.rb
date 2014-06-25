class CreateSlipToShopItems < ActiveRecord::Migration
  def change
    create_table :slip_to_shop_items do |t|
      t.integer :slip_id
      t.integer :shop_item_id
      t.integer :shipping_count
      t.integer :shipping_price
      t.integer :deliver_count
      t.integer :deliver_price
      t.timestamps
    end
  end
end
