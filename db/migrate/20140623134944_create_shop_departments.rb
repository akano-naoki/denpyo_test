class CreateShopDepartments < ActiveRecord::Migration
  def change
    create_table :shop_departments do |t|
      t.string :name

      t.timestamps
    end
  end
end
