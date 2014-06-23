class Category < ActiveRecord::Base
  belongs_to :big_category,
    :foreign_key => :big_category_code,
    :primary_key => :code

end