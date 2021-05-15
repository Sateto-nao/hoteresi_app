class Room < ApplicationRecord
  validates :room_name, presence: true, length: {maximum: 30}
  validates :introduction, presence: true, length: {maximum: 150}
  validates :amenity, presence: true, length: {maximum: 500}
  validates :price, presence: true
  validates :user_id, presence: true
  validates :hotel_id, presence: true
  validates :group, presence: true
  validates :smoke, presence: true

  mount_uploader :room_img, RoomImageUploader

  belongs_to :hotel
  belongs_to :user
  has_many :favorites, dependent: :destroy
end
