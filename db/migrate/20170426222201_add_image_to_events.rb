class AddImageToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :main_image
    end
  end

  def self.down
    drop_attached_file :events, :main_image
  end
end
