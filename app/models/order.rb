class Order < ApplicationRecord
  belongs_to :user
  has_many :cakes, dependent: :destroy
  has_many :order_others, dependent: :destroy
  has_many :others, through: :order_others
end
