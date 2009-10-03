class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.float   :amount
      t.string  :note
      t.integer :doors
      t.integer :finale
      t.string  :km

      t.references :car
      t.references :year
      t.references :model
      t.references :color
      t.references :gear
      t.references :fuel
      t.references :type_vehicle
      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE vehicles ADD CONSTRAINT fk_vehicles_cars FOREIGN KEY (car_id) REFERENCES cars(id)"
      execute "ALTER TABLE vehicles ADD CONSTRAINT fk_vehicles_colors FOREIGN KEY (color_id) REFERENCES colors(id)"
      execute "ALTER TABLE vehicles ADD CONSTRAINT fk_vehicles_gears FOREIGN KEY (gear_id) REFERENCES gears(id)"
      execute "ALTER TABLE vehicles ADD CONSTRAINT fk_vehicles_fuels FOREIGN KEY (fuel_id) REFERENCES fuels(id)"
      execute "ALTER TABLE vehicles ADD CONSTRAINT fk_vehicles_type_vehicles FOREIGN KEY (type_vehicle_id) REFERENCES type_vehicles(id)"
  end

  def self.down
    drop_table :vehicles
  end
end
