json.array!(@fotografia) do |fotografium|
  json.extract! fotografium, :id
  json.url fotografium_url(fotografium, format: :json)
end
