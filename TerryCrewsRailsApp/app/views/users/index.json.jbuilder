json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :password_digest, :surname, :email, :birthdate, :unit_preference
  json.url user_url(user, format: :json)
end
