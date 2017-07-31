class Other < ApplicationRecord
  has_many :order_others, dependent: :destroy
  has_many :orders, through: :order_others
end
