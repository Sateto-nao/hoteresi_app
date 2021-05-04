class RemovePostcodeFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :prefecture_code, :integer
    remove_column :rooms, :postcode, :integer
    remove_column :rooms, :address_city, :string
    remove_column :rooms, :address_street, :string
    remove_column :rooms, :address_building, :string
  end
end
