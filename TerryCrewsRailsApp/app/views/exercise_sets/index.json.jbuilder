json.array!(@exercise_sets) do |exercise_set|
  json.extract! exercise_set, :id, :target_reps, :achieved_reps, :weight, :rest_period_seconds
  json.url exercise_set_url(exercise_set, format: :json)
end
