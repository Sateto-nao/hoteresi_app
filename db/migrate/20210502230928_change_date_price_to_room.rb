class ChangeDatePriceToRoom < ActiveRecord::Migration[6.1]
  def change
    change_column :rooms, :price, :integer
  end
end
