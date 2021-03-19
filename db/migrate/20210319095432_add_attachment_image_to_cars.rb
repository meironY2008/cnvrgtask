class AddAttachmentImageToCars < ActiveRecord::Migration[6.1]
  def self.up
    change_table :cars do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cars, :image
  end
end
