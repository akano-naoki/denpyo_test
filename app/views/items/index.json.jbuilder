json.array!(@items) do |item|
  json.extract! item, :id, :item_part_number_code, :name, :cost_price, :sell_price, :code
  json.url item_url(item, format: :json)
end
