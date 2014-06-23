class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_part_number_code
      t.string :name
      t.float :cost_price
      t.integer :sell_price
      t.string :code

      t.timestamps
    end
  end
end
