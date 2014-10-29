json.array!(@rates) do |rate|
  json.extract! rate, :id, :value, :rating_type_id, :description
  json.url rate_url(rate, format: :json)
end
