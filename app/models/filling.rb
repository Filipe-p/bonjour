class Filling < ApplicationRecord
  has_many :cakes, dependent: :destroy
  has_many :custom_cakes, dependent: :destroy
  has_many :dough_fillings, dependent: :destroy
  has_many :doughs, through: :dough_fillings, dependent: :destroy
end
