class AddGroupToRoom < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :group, :string
  end
end
