class AddPostCodeToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :postcode, :integer
    add_column :hotels, :prefecture_code, :integer
    add_column :hotels, :address_city, :string
    add_column :hotels, :address_street, :string
    add_column :hotels, :address_building, :string
  end
end
