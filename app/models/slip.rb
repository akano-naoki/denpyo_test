class Slip < ActiveRecord::Base
  has_many :slip_shop_items
  has_many :shop_items, :through => :slip_shop_items
  belongs_to :partner
end
