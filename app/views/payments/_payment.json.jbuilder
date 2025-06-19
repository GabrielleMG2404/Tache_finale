json.extract! payment, :id, :appointment_id, :prix, :paiement_method, :created_at, :updated_at
json.url payment_url(payment, format: :json)
