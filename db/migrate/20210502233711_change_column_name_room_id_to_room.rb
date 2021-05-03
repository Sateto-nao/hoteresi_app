class ChangeColumnNameRoomIdToRoom < ActiveRecord::Migration[6.1]
  def change
    rename_column :rooms, :room_id, :user_id
  end
end
