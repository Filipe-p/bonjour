class Cake < ApplicationRecord
  belongs_to :decoration
  belongs_to :dough
  belongs_to :filling
end
