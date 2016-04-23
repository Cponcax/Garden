json.array!(@tip_images) do |tip_image|
  json.extract! tip_image, :id
  json.url tip_image_url(tip_image, format: :json)
end
