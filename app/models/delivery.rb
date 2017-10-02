class Delivery < ApplicationRecord
  belongs_to :user, optional: true
  has_one :order
end
