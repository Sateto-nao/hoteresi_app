class AddContactToReserves < ActiveRecord::Migration[6.1]
  def change
    rename_column :reserves, :price, :contact
    rename_column :reserves, :view, :preview
    add_column :reserves, :how_preview, :string
    add_column :reserves, :how_contract, :string
    add_column :reserves, :contract, :string
  end
end
