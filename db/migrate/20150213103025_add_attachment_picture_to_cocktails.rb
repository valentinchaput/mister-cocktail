class AddAttachmentPictureToCocktails < ActiveRecord::Migration
  def self.up
    change_table :cocktails do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :cocktails, :picture
  end
end
