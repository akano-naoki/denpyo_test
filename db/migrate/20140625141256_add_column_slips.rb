class AddColumnSlips < ActiveRecord::Migration
  def change
    add_column :slips, :last_checker, :string
    add_column :slips, :created_timestamp, :datetime
    add_column :slips, :updated_timestamp, :datetime
  end
end
