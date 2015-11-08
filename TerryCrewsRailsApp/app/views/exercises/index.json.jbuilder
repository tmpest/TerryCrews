json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :sets_count, :rep_goal, :rep_results
  json.url exercise_url(exercise, format: :json)
end
