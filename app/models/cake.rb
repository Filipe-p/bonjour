class Cake < ApplicationRecord
  belongs_to :decoration
  belongs_to :dough
  belongs_to :filling

  has_many :order_cakes, dependent: :destroy
  has_many :orders, through: :order_cakes

  SIZE = ["Medium", "Large", "Extra Large"]
  SHAPES = ['Square', 'Round']
end
