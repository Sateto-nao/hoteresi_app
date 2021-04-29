class AddColumnHotelImageToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :hotel_img, :string
  end
end
