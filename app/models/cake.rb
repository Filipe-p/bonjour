class Cake < ApplicationRecord
  belongs_to :decoration, optional: true
  belongs_to :dough
  belongs_to :filling, optional: true
  belongs_to :order

  SIZE = ["Medium", "Large", "Extra Large"]
  SHAPES = ['Square', 'Round']
end
