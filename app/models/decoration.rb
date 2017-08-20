class Decoration < ApplicationRecord
  has_many :cakes, dependent: :delete_all
end
