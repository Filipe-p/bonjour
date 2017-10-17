class FeaturedCake < ApplicationRecord
   validates :name, presence: true
   has_attachment :photo
end
