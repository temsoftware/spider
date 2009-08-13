class CreateOptionsVehicles < ActiveRecord::Migration
  def self.up
    create_table :options_vehicles do |t|
     t.references :vehicle
     t.references :option

     t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE options_vehicles ADD CONSTRAINT fk_options_vehicles_vehicles FOREIGN KEY (vehicle_id) REFERENCES vehicles(id)"
      execute "ALTER TABLE options_vehicles ADD CONSTRAINT fk_options_vehicles_options FOREIGN KEY (option_id) REFERENCES options(id)"
  end

  def self.down
    drop_table :options_vehicles
  end
end
