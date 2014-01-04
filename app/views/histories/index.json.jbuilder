json.array!(@histories) do |history|
  json.extract! history, :id, :height, :current_weight, :customary_weight, :circumference, :activity, :degree_of_stress, :pathology, :observation, :nutrition_diagnosis, :patient_id
  json.url history_url(history, format: :json)
end
