class RemoveReferenceFromFavorite < ActiveRecord::Migration[6.1]
  def change
    remove_reference :favorites, :hotel, index: true
  end
end
