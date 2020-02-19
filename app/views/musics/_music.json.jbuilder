json.extract! music, :id, :artist, :song, :genre, :tag, :created_at, :updated_at
json.url music_url(music, format: :json)
