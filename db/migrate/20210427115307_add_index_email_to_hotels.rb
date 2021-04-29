class AddIndexEmailToHotels < ActiveRecord::Migration[6.1]
  def change
    add_index :hotels, :email, unique: true
  end
end
