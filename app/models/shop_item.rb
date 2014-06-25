class ShopItem < ActiveRecord::Base
  has_many :slip_shop_item
  belongs_to :shop
  belongs_to :item
end
