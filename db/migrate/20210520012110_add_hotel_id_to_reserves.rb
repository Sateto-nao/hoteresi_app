class AddHotelIdToReserves < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :hotel_id, :string
  end
end
