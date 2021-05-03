class Room < ApplicationRecord
  validates :room_name, presence: true, length: {maximum: 30}
  validates :introduction, length: {maximum: 300}
  validates :price, presence: true
  validates :user_id, presence: true
  validates :hotel_id, presence: true

  mount_uploader :room_img, RoomImageUploader

  belongs_to :hotel
  belongs_to :user
  has_many :favorites, dependent: :destroy
end
