class BigCategory < ActiveRecord::Base
  has_many :category,
    :foreign_key => :big_category_code,
    :primary_key => :code
end
