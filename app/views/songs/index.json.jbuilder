json.array!(@songs) do |song|
  json.extract! song, :id, :artist, :title, :key, :rating, :priority, :comment
  json.url song_url(song, format: :json)
end
