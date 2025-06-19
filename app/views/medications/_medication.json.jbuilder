json.extract! medication, :id, :nom, :dosage, :frequence, :prescription_id, :created_at, :updated_at
json.url medication_url(medication, format: :json)
