json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :content, :user_id, :positive, :negative, :intensity
  json.url entry_url(entry, format: :json)
end
