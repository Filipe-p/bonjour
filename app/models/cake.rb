class Cake < ApplicationRecord
  belongs_to :decoration
  belongs_to :dough
  belongs_to :filling

  has_many :order_cakes
  has_many :orders, through: :order_cakes
end
