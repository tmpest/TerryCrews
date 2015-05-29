json.array!(@preferences) do |preference|
  json.extract! preference, :id, :unit_preference, :is_public
  json.url preference_url(preference, format: :json)
end
