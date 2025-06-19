json.extract! diagnostic, :id, :appointment_id, :description, :date, :code_diagnostic, :created_at, :updated_at
json.url diagnostic_url(diagnostic, format: :json)
