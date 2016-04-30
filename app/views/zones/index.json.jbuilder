json.array!(@zones) do |zone|
  json.extract! zone, :id
  json.url zone_url(zone, format: :json)
end
