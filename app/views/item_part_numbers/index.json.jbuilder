json.array!(@item_part_numbers) do |item_part_number|
  json.extract! item_part_number, :id, :category_code, :name, :code, :description
  json.url item_part_number_url(item_part_number, format: :json)
end
