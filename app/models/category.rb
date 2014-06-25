class Category < ActiveRecord::Base
  belongs_to :big_category,
    :foreign_key => :code,
    :primary_key => :big_category_code
end
