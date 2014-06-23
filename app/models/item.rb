class Item < ActiveRecord::Base
  belongs_to :item_part_number,
    :foreign_key => :code,
    :primary_key => :item_part_number_code
end
