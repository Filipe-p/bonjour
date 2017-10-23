class Dough < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :cakes, dependent: :delete_all
  has_many :dough_fillings, dependent: :delete_all
  has_many :fillings, through: :dough_fillings

  monetize :price_cents
end
