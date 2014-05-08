json.array!(@units) do |unit|
  json.extract! unit, :id, :string, :integer, :boolean, :text
  json.url unit_url(unit, format: :json)
end
