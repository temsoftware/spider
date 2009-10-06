class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name,    :null => false
      t.string :login,   :null => false
      t.string :pass,    :null => false
      t.boolean :active, :null => false, :default => true
      t.references :profile

      t.timestamps
    end
#Chaves Estrangeiras
      execute "ALTER TABLE users ADD CONSTRAINT fk_users_profiles FOREIGN KEY (profile_id) REFERENCES profiles(id)"
  end

  def self.down
    drop_table :users
  end
end
