class Dough < ApplicationRecord
  has_attachment :photo
  has_many :cakes, dependent: :delete_all
  has_many :custom_cakes, dependent: :delete_all
  has_many :dough_fillings, dependent: :delete_all
  has_many :fillings, through: :dough_fillings, dependent: :delete_all
  monetize :price_cents
end
