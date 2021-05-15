class AddSmokeToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :smoke, :string
    add_column :rooms, :amenity, :text
  end
end
