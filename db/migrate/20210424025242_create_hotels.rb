class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :hotel_name
      t.text :introduction
      t.string :tell
      t.string :room_id
      t.string :user_id

      t.timestamps
    end
  end
end
