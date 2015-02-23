class AddAttachmentFileToGalleries < ActiveRecord::Migration
  def self.up
    change_table :galleries do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :galleries, :file
  end
end
