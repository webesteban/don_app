class AddColumnsToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :lat, :decimal, precision: 12, scale: 8
  	add_column :events, :lon, :decimal, precision: 12, scale: 8

  end
end
