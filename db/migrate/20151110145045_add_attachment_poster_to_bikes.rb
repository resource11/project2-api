class AddAttachmentPosterToBikes < ActiveRecord::Migration
  def self.up
    change_table :bikes do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :bikes, :poster
  end
end
