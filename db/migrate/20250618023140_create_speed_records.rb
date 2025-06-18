class CreateSpeedRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :speed_records do |t|
      t.references :vehicle, null: false, foreign_key: true
      t.float :speed
      t.string :location
      t.datetime :recorded_at
      t.string :direction
      t.string :weather_conditions
      t.text :notes

      t.timestamps
    end
  end
end
