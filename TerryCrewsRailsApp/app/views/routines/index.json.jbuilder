json.array!(@routines) do |routine|
  json.extract! routine, :id, :title
  json.url routine_url(routine, format: :json)
end
