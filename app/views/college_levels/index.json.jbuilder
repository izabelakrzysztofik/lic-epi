json.array!(@college_levels) do |college_level|
  json.extract! college_level, :id, :college_level_id, :college_level_name
  json.url college_level_url(college_level, format: :json)
end
