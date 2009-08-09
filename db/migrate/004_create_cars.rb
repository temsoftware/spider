class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.string  :name
      t.integer :brend_id
      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE cars ADD CONSTRAINT fk_cars_brends FOREIGN KEY (brend_id) REFERENCES brends(id)"
  end

  def self.down
    drop_table :cars
  end
end
