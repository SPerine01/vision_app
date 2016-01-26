class AddAttachmentPhotoToVisions < ActiveRecord::Migration
  def self.up
    change_table :visions do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :visions, :photo
  end
end
