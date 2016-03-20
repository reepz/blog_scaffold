json.array!(@sztalugis) do |sztalugi|
  json.extract! sztalugi, :id
  json.url sztalugi_url(sztalugi, format: :json)
end
