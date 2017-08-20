class Decoration < ApplicationRecord
  has_many :cakes, dependent: :delete_all
  monetize :price_cents
end
