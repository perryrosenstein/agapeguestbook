json.array!(@users) do |user|
  json.extract! user, :fbid, :name, :email, :host, :arrival_date, :departure_date, :where_from, :why_in_sf
  json.url user_url(user, format: :json)
end