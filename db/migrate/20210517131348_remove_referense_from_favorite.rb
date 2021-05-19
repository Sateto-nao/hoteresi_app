class RemoveReferenseFromFavorite < ActiveRecord::Migration[6.1]
  def change
    remove_reference :favorites, :hotel_id, index: true
    add_reference :favorites, :hotel, foreign_key: true
  end
end
