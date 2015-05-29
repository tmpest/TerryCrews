json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :is_resistance
  json.url exercise_url(exercise, format: :json)
end
