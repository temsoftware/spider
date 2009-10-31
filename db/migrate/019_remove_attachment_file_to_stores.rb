class RemoveAttachmentFileToStores < ActiveRecord::Migration
  def self.up
    remove_column :stores, :file_updated_at
    remove_column :stores, :file_file_size
    remove_column :stores, :file_content_type
    remove_column :stores, :file_file_name
  end

  def self.down
  end
end

