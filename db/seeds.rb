# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Limpiar la base de datos
SpeedRecord.destroy_all
Vehicle.destroy_all

# Crear vehículos
vehicles = [
  {
    plate_number: "ABC123",
    vehicle_type: "Carro",
    brand: "Toyota",
    model: "Corolla",
    year: 2020
  },
  {
    plate_number: "XYZ789",
    vehicle_type: "Moto",
    brand: "Honda",
    model: "CBR600",
    year: 2021
  },
  {
    plate_number: "DEF456",
    vehicle_type: "Camión",
    brand: "Volvo",
    model: "FH16",
    year: 2019
  }
]

vehicles.each do |vehicle_data|
  vehicle = Vehicle.create!(vehicle_data)
  
  # Crear registros de velocidad para cada vehículo
  5.times do |i|
    SpeedRecord.create!(
      vehicle: vehicle,
      speed: rand(30..120),
      location: ["Avenida Principal", "Calle Secundaria", "Carretera Nacional", "Autopista"].sample,
      recorded_at: Time.current - i.days,
      direction: ["Norte", "Sur", "Este", "Oeste"].sample,
      weather_conditions: ["Soleado", "Lluvioso", "Nublado", "Despejado"].sample,
      notes: "Registro de prueba #{i + 1}"
    )
  end
end

puts "Se han creado #{Vehicle.count} vehículos y #{SpeedRecord.count} registros de velocidad"
