class Hotel < ApplicationRecord

  include JpPrefecture
  jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
  end

  mount_uploader :hotel_img, HotelImageUploader
  before_save { self.email = email.downcase }

  validates :hotel_name, presence: true, uniqueness: true, length: {maximum: 30}
  validates :tell, presence: true, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }}
  validates :introduction, length: {maximum: 300}
  validates :postcode, presence: true
  validates :prefecture_code, presence: true
  validates :address_city, presence: true
  validates :address_street, presence: true
  validates :address_building, presence: true, uniqueness: true

  belongs_to :user
  has_many :rooms, dependent: :destroy
   accepts_nested_attributes_for :rooms
end
