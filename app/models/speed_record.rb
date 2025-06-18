class SpeedRecord < ApplicationRecord
  belongs_to :vehicle
  
  validates :speed, presence: true, numericality: { greater_than: 0 }
  validates :location, presence: true
  validates :recorded_at, presence: true
  validates :direction, presence: true
  validates :weather_conditions, presence: true
  
  scope :recent, -> { order(recorded_at: :desc) }
  scope :by_vehicle, ->(vehicle_id) { where(vehicle_id: vehicle_id) }
end
