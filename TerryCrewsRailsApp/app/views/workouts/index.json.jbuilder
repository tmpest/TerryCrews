json.array!(@workouts) do |workout|
  json.extract! workout, :id, :notes, :start_time, :end_time, :name
  json.url workout_url(workout, format: :json)
end
