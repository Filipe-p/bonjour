class Decoration < ApplicationRecord
  has_attachment :photo
  has_many :cakes, dependent: :delete_all
  monetize :price_cents
end
