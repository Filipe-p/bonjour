class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cakes, dependent: :delete_all
  has_many :order_others, dependent: :delete_all
  has_many :others, through: :order_others
  has_one :delivery, dependent: :delete
end
