class Cake < ApplicationRecord
  belongs_to :decoration, optional: true
  belongs_to :dough
  belongs_to :filling, optional: true
  belongs_to :order
  monetize :price_cents

  SIZES = (1.5..5.0).step(0.5).map{|s| s} + (6.0..7.0).step(1.0).map{|s| s}
end
