class OrderOther < ApplicationRecord
  belongs_to :order
  belongs_to :other
end
