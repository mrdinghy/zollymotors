json.array!(@searches) do |search|
  json.extract! search, :id, :search_start, :search_end, :manufacturer_id, :car_model, :car_year, :recommended, :search_text
  json.url search_url(search, format: :json)
end
