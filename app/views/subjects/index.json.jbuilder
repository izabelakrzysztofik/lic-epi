json.array!(@subjects) do |subject|
  json.extract! subject, :id, :subject_id, :subject_name, :description
  json.url subject_url(subject, format: :json)
end
