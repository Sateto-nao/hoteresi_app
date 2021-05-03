class AddHotelIdToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :hotel_id, :string
    add_column :rooms, :room_id, :string
    add_column :rooms, :room_img, :string
  end
end
