class AddGuestRoomsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :guest_rooms do |t|
      t.references :guest, null: false, foreign_key: true
      t.references :rooms, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end