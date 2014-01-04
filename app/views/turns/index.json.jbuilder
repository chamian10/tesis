json.array!(@turns) do |turn|
  json.extract! turn, :id, :date, :state, :patient_id
  json.url turn_url(turn, format: :json)
end
