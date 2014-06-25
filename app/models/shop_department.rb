class ShopDepartment < ActiveRecord::Base
  has_many :shops
  belongs_to :big_department
end
