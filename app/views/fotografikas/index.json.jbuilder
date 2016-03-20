json.array!(@fotografikas) do |fotografika|
  json.extract! fotografika, :id
  json.url fotografika_url(fotografika, format: :json)
end
