class Order < ApplicationRecord
  belongs_to :user
  has_many :cakes, dependent: :delete_all
  has_many :order_others, dependent: :delete_all
  has_many :others, through: :order_others
end
