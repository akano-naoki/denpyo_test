class AddColumnToSlip < ActiveRecord::Migration
  def change
    add_column :slips, :shop_id, :integer
  end
end
