json.array!(@user_weights) do |user_weight|
  json.extract! user_weight, :id, :weight
  json.url user_weight_url(user_weight, format: :json)
end
