class Dough < ApplicationRecord
  has_many :cakes, dependent: :destroy
  has_many :custom_cakes, dependent: :destroy
  has_many :dough_fillings, dependent: :destroy
  has_many :fillings, through: :dough_fillings, dependent: :destroy
end
