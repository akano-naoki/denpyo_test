json.array!(@categories) do |category|
  json.extract! category, :id, :big_category_code, :name, :code, :description
  json.url category_url(category, format: :json)
end
