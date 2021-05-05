class ChageDateToFavorite < ActiveRecord::Migration[6.1]
  def change
     remove_column :favorites, :user_id, :bigint
     remove_column :favorites, :room_id, :bigint
  end
end
