class Category < ApplicationRecord
  has_many :decoration_categories, dependent: :delete_all
  has_many :decorations, through: :decoration_categories
end
