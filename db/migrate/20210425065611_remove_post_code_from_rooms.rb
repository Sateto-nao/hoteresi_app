class RemovePostCodeFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :postcode, :integer
  end
end
