json.array!(@big_departments) do |big_department|
  json.extract! big_department, :id, :name, :code, :description
  json.url big_department_url(big_department, format: :json)
end
