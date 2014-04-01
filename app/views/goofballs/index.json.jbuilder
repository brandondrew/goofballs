json.array!(@goofballs) do |goofball|
  json.extract! goofball, :id, :user_id
  json.url goofball_url(goofball, format: :json)
end
