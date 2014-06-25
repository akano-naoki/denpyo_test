json.array!(@slips) do |slip|
  json.extract! slip, :id, :type, :code, :date, :from_shop_id, :reason, :price, :description
  json.url slip_url(slip, format: :json)
end
