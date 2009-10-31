class AddAttachmentFileToStores < ActiveRecord::Migration
  def self.up
    add_column :stores, :file_file_name, :string
    add_column :stores, :file_content_type, :string
    add_column :stores, :file_file_size, :integer
    add_column :stores, :file_updated_at, :datetime
  end

  def self.down
    remove_column :stores, :file_updated_at
    remove_column :stores, :file_file_size
    remove_column :stores, :file_content_type
    remove_column :stores, :file_file_name
  end
end

