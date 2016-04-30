json.array!(@family_images) do |family_image|
  json.extract! family_image, :id
  json.url family_image_url(family_image, format: :json)
end
