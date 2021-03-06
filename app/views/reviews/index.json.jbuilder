json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :manufacturer_id, :stars_ease, :stars_quality, :stars_price, :stars_ontime, :stars_attention, :service_date, :review_note, :recommended, :car_model, :car_year
  json.url review_url(review, format: :json)
end
