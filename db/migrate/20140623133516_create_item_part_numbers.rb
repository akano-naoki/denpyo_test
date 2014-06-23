class CreateItemPartNumbers < ActiveRecord::Migration
  def change
    create_table :item_part_numbers do |t|
      t.string :category_code
      t.string :name
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
