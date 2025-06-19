json.extract! room, :id, :nuemero_chambre, :etage, :type, :created_at, :updated_at
json.url room_url(room, format: :json)
