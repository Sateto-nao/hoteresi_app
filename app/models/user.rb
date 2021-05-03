class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :trackable, :timeoutable

  validates :name, presence: true
  validates :birthday, presence: true

  has_many :hotels, dependent: :destroy
  has_many :rooms
  has_many :favorites, dependent: :destroy
end
