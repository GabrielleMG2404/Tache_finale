json.extract! patient, :id, :nom, :prenom, :date_naissance, :telephone, :created_at, :updated_at
json.url patient_url(patient, format: :json)
