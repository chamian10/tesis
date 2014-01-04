json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :lastname, :gender, :age, :dni, :email, :address, :photo
  json.url patient_url(patient, format: :json)
end
