json.extract! medical_report, :id, :patient_id, :description, :date, :created_at, :updated_at
json.url medical_report_url(medical_report, format: :json)
