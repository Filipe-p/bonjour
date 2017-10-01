class Other < ApplicationRecord
  has_many :order_others
  has_many :orders, through: :order_others
  monetize :price_cents
end
