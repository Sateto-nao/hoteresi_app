class ChangePrefectureCodeToHotels < ActiveRecord::Migration[6.1]
  def change
    change_column :hotels, :prefecture_code, :integer
  end
end
