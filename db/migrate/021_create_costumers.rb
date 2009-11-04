class CreateCostumers < ActiveRecord::Migration
  def self.up
    create_table :costumers do |t|
      t.string      :name
      t.string      :email
      t.string      :tel
      t.integer     :news
      t.timestamps
    end
  end

  def self.down
    drop_table :costumers
  end
end

