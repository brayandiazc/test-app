json.extract! speed_record, :id, :vehicle_id, :speed, :location, :recorded_at, :direction, :weather_conditions, :notes, :created_at, :updated_at
json.url speed_record_url(speed_record, format: :json)
