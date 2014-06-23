class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :shop_department_id

      t.timestamps
    end
  end
end
