class CreateBigCategories < ActiveRecord::Migration
  def change
    create_table :big_categories do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
