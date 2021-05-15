class ChangeContactTo < ActiveRecord::Migration[6.1]
  def change
    add_reference :reserves, :contact, foreign_key: true
    remove_column :reserves, :contact, :string
  end
end
