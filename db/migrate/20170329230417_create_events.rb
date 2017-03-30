class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_time
      t.date :end_time
      t.string :address

      t.timestamps null: false
    end
  end
end
