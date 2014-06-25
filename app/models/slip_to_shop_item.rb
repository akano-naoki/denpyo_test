class SlipToShopItem < ActiveRecord::Base
  belongs_to :slip
  belongs_to :shop_item
end
