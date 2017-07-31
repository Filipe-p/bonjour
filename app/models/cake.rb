class Cake < ApplicationRecord
  belongs_to :decoration
  belongs_to :dough
  belongs_to :filling
  belongs_to :order

  SIZE = ["Medium", "Large", "Extra Large"]
  SHAPES = ['Square', 'Round']
end
