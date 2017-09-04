class Cake < ApplicationRecord
  belongs_to :decoration, optional: true
  belongs_to :dough
  belongs_to :filling, optional: true
  belongs_to :order
  monetize :price_cents

  SIZES = ["Médio", "Grande", "Extra Grande"]
end
