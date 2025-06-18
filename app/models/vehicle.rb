class Vehicle < ApplicationRecord
  has_many :speed_records, dependent: :destroy
  
  validates :plate_number, presence: true, uniqueness: true
  validates :vehicle_type, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true, numericality: { only_integer: true, greater_than: 1900, less_than_or_equal_to: Date.current.year }
end
