class CreateVehicles < ActiveRecord::Migration[8.0]
  def change
    create_table :vehicles do |t|
      t.string :plate_number
      t.string :vehicle_type
      t.string :brand
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
