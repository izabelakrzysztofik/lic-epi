json.array!(@degrees) do |degree|
  json.extract! degree, :id, :degree_id, :degree_name
  json.url degree_url(degree, format: :json)
end
