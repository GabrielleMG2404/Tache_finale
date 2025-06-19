json.extract! doctor, :id, :nom, :prenom, :telephone, :user_id, :speciality_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
