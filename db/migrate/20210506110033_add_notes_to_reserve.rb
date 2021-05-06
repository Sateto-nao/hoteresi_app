class AddNotesToReserve < ActiveRecord::Migration[6.1]
  def change
    add_column :reserves, :notes, :text
  end
end
