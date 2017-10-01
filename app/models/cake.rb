class Cake < ApplicationRecord
  belongs_to :decoration, optional: true
  belongs_to :dough
  belongs_to :filling, optional: true
  belongs_to :order
  monetize :price_cents

  SIZES = (1.0..3.0).step(0.25).map{|s| s}
end
