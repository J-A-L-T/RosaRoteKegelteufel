json.array!(@albums) do |album|
  json.extract! album, :id, :title, :string, :description, :text
  json.url album_url(album, format: :json)
end
