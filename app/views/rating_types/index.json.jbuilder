json.array!(@rating_types) do |rating_type|
  json.extract! rating_type, :id, :name, :rate_id
  json.url rating_type_url(rating_type, format: :json)
end
