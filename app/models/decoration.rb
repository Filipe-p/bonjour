class Decoration < ApplicationRecord
  has_attachment :photo
  has_many :cakes, dependent: :delete_all
  monetize :price_cents
  has_many :decoration_categories, dependent: :delete_all
  has_many :categories, through: :decoration_categories
end
