class Decoration < ApplicationRecord
  has_many :cakes, dependent: :destroy
end
