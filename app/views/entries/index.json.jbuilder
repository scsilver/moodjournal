json.array!(@entries) do |entry|
  json.extract! entry, :id, :user_id, :title, :content, :created_at, :positive, :negative, :intensity
  json.url entry_url(entry, format: :json)
end
