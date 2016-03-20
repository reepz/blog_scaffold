json.array!(@uncategorized_objects) do |uncategorized_object|
  json.extract! uncategorized_object, :id
  json.url uncategorized_object_url(uncategorized_object, format: :json)
end
