class RemovePostCodeFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :prefecture_code, :integer
    remove_column :users, :address_city, :string
    remove_column :users, :address_street, :string
    remove_column :users, :address_building, :string
  end
end
