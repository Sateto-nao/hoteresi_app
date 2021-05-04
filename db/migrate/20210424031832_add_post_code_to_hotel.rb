class AddPostCodeToHotel < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :postcode, :integer
    add_column :rooms, :prefecture_code, :integer
    add_column :rooms, :address_city, :string
    add_column :rooms, :address_street, :string
    add_column :rooms, :address_building, :string
  end
end
