class Delivery < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :order

  SLOTS = (10..18).step(2).map { |s| "#{s}:00 - #{s+2}:00" }.each_with_index.map { |ts, i| [ts, i] }

  validates :contact_first_name, presence: true
  validates :contact_last_name, presence: true
  validates :contact_telephone, presence: true
  validates :contact_email, presence: true

  validate do |delivery|
    unless delivery.order.cakes.size >= 1
      errors.add(:base, "Encomende um bolo")
    end

    if delivery.delivery_date.blank?
      errors.add(:delivery_date, "A entrega só é possivel em 2 dias")
    else
      date = delivery.delivery_date
      unless date >= Date.current + 2.days
        errors.add(:delivery_date, "A entrega só é possivel em 2 dias")
      end
    end
  end

  def delivery_slot_enum
    Delivery::SLOTS
  end
end
