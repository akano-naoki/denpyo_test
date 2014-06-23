class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :big_category_code
      t.string :name
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
