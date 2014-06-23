json.array!(@shop_items) do |shop_item|
  json.extract! shop_item, :id, :item_code, :shop_id, :cost_price, :sell_price, :description
  json.url shop_item_url(shop_item, format: :json)
end
