class AddAttachmentDataToAlbums < ActiveRecord::Migration
  def self.up
    change_table :albums do |t|
      t.has_attached_file :data
    end
  end

  def self.down
    drop_attached_file :albums, :data
  end
end
