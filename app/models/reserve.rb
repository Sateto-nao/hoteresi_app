class Reserve < ApplicationRecord
  belongs_to :contact, optional: true

  validates :contact_id, presence: true
  validates :notes, presence: true, length: {maximum: 500}, if: [:contact_id_4?, :contact_id_2?]
  validates :preview, presence: true, if: :contact_id_3?
  validates :how_preview, presence: true, if: :contact_id_3?
  validates :contract, presence: true, if: :contact_id_0?
  validates :how_contract, presence: true, if: :contact_id_0?
  validates :group, presence: true, if: [:contact_id_0?, :contact_id_0?, :contact_id_3?]
  validates :user_id, presence: true
  validates :room_id, presence: true

  def contact_id_0?
    contact_id == 0
  end
  def contact_id_1?
    contact_id == 1
  end
  def contact_id_2?
    contact_id == 2
  end
  def contact_id_3?
    contact_id == 3
  end
  def contact_id_4?
    contact_id == 4
  end
end
