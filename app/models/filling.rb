class Filling < ApplicationRecord
  has_many :cakes, dependent: :destroy
  has_many :custom_cakes, dependent: :destroy
end
