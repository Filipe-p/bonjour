class Order < ApplicationRecord
  belongs_to :user

  has_many :order_cakes, dependent: :destroy
  has_many :cakes, through: :order_cakes

  has_many :order_others, dependent: :destroy
  has_many :others, through: :order_others
end
