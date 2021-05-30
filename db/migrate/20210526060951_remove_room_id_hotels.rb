class RemoveRoomIdHotels < ActiveRecord::Migration[6.1]
  def change
    remove_column :hotels, :room_id, :string
  end
end
