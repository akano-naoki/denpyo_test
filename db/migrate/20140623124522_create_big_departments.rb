class CreateBigDepartments < ActiveRecord::Migration
  def change
    create_table :big_departments do |t|
      t.string :name
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
