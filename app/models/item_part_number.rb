class ItemPartNumber < ActiveRecord::Base
  belongs_to :category,
    :foreign_key => :code,
    :primary_key => :category_code

end
