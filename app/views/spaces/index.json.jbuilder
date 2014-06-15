json.array!(@spaces) do |space|
  json.extract! space, :id, :title, :description, :image_url, :price, :available
  json.url space_url(space, format: :json)
end
