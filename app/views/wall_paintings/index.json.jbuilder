json.array!(@wall_paintings) do |wall_painting|
  json.extract! wall_painting, :id
  json.url wall_painting_url(wall_painting, format: :json)
end
