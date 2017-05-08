class AddImageToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :main_image
    end
  end

  def self.down
    drop_attached_file :articles, :main_image
  end
end
