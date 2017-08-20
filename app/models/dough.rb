class Dough < ApplicationRecord
  has_many :cakes, dependent: :delete_all
  has_many :custom_cakes, dependent: :delete_all
  has_many :dough_fillings, dependent: :delete_all
  has_many :fillings, through: :dough_fillings, dependent: :delete_all
end
