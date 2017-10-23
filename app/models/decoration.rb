class Decoration < ApplicationRecord
  has_many :decoration_categories, dependent: :delete_all
  has_many :categories, through: :decoration_categories

  mount_uploader :photo, PhotoUploader

  has_many :cakes, dependent: :delete_all
  monetize :price_cents
end
