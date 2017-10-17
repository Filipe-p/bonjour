class Delivery < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :order

  SLOTS = (10..18).step(2).map { |s| "#{s}:00 - #{s+2}:00" }.each_with_index.map { |ts, i| [ts, i] }

  validate do |delivery|
    unless delivery.order.cakes.size >= 1
      errors.add(:base, "Encomende um bolo")
    end

    if delivery.delivery_date.blank? && delivery.delivery_slot.blank?
      errors.add(:delivery_date, "A entrega só é possivel em pelo menos 48 horas")
      errors.add(:delivery_slot, "A entrega só é possivel em pelo menos 48 horas")
    elsif delivery.delivery_date.blank?
      errors.add(:delivery_slot, "A entrega só é possivel em pelo menos 48 horas")
    elsif delivery.delivery_slot.blank?
      errors.add(:delivery_date, "A entrega só é possivel em pelo menos 48 horas")
    else
      date = delivery.delivery_date
      time = Time.strptime(Delivery::SLOTS[delivery.delivery_slot][0][0..4], "%H:%M")

      unless DateTime.new(date.year, date.month, date.day, time.hour, time.min) >= DateTime.current + 48.hours
        errors.add(:delivery_date, "A entrega só é possivel em pelo menos 48 horas")
        errors.add(:delivery_slot, "A entrega só é possivel em pelo menos 48 horas")
      end
    end
  end

  def self.default_delivery_slot
    time = Time.current
    Delivery::SLOTS.select{ |ds| Time.strptime(ds[0][0..4], "%H:%M") - time ==  Delivery::SLOTS.map{|ds| Time.strptime(ds[0][0..4], "%H:%M") - time}.min }.first
  end
end
