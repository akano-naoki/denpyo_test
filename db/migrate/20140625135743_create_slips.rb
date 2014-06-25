class CreateSlips < ActiveRecord::Migration
  def change
    create_table :slips do |t|
      t.string :type
      t.string :code
      t.string :date
      t.string :partner_id
      t.string :reason
      t.integer :total_price
      t.text :description

      t.timestamps
    end
  end
end
