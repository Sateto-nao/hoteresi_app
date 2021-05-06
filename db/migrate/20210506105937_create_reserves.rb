class CreateReserves < ActiveRecord::Migration[6.1]
  def change
    create_table :reserves do |t|
      t.string :user_id
      t.string :room_id
      t.string :group
      t.integer :price
      t.date :view
      t.date :start_date

      t.timestamps
    end
  end
end
