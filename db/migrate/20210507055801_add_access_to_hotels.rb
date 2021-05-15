class AddAccessToHotels < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :facility, :text
    add_column :hotels, :preview, :string
    add_column :hotels, :contract, :string
    add_column :hotels, :parking, :string  
  end
end
