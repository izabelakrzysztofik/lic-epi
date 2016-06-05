json.array!(@types) do |type|
  json.extract! type, :id, :type_id, :type_name
  json.url type_url(type, format: :json)
end
