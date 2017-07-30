class Filling < ApplicationRecord
  has_many :cakes
  has_many :custom_cakes
end
