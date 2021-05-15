class RenameStartDateToReserve < ActiveRecord::Migration[6.1]
  def change
    change_column :reserves, :contract, :date
  end
end
