json.array!(@relationships) do |relationship|
  json.extract! relationship, :id, :friend_id
  json.url relationship_url(relationship, format: :json)
end
