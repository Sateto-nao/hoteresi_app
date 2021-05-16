class Reserve < ApplicationRecord
  belongs_to :contact, optional: true

  validates :contact_id, presence: true
  validates :user_id, presence: true
  validates :room_id, presence: true

  with_options if: :contact_id_0? do |contact|
    contact.validates :contract, presence: true
    contact.validates :group, presence: true
    contact.validates :how_contract, presence: true
  end
  with_options if: :contact_id_1? do |contact|
    contact.validates :group, presence: true
  end
  with_options if: :contact_id_2? do |contact|
    contact.validates :notes, presence: true, length: {maximum: 500}
  end
  with_options if: :contact_id_3? do |contact|
    contact.validates :group, presence: true
    contact.validates :preview, presence: true
    contact.validates :how_preview, presence: true
  end
  with_options if: :contact_id_4? do |contact|
    contact.validates :notes, presence: true, length: {maximum: 500}
  end

  validate :date_before_preview
  validate :date_before_contract

  def date_before_preview
    return if preview.blank?
    errors.add(:preview,"は3日以降のものを選択してください") if preview < Date.today.since(3.days)
  end

  def date_before_contract
    return if contract.blank?
    errors.add(:contract,"は3日以降のものを選択してください") if contract < Date.today.since(3.days)
  end



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
