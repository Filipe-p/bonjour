class Other < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :order_others
  has_many :orders, through: :order_others
  monetize :price_cents
end
