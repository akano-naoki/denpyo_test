json.array!(@shop_departments) do |shop_department|
  json.extract! shop_department, :id, :name
  json.url shop_department_url(shop_department, format: :json)
end
