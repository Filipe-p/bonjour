class Order < ApplicationRecord
  belongs_to :user
  has_many :cakes, dependent: :destroy
  has_many :others
end
