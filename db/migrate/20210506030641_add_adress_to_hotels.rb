class AddAdressToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :address, :string
  end
end
