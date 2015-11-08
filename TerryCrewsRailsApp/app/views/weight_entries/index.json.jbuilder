json.array!(@weight_entries) do |weight_entry|
  json.extract! weight_entry, :id, :weight
  json.url weight_entry_url(weight_entry, format: :json)
end
