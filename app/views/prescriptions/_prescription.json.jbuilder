json.extract! prescription, :id, :appointment_id, :date_prescription, :notes, :created_at, :updated_at
json.url prescription_url(prescription, format: :json)
