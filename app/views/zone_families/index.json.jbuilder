json.array!(@zone_families) do |zone_family|
  json.extract! zone_family, :id
  json.url zone_family_url(zone_family, format: :json)
end
