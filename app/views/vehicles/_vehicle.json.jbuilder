json.extract! vehicle, :id, :plate_number, :vehicle_type, :brand, :model, :year, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
