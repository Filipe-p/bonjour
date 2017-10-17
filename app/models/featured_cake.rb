class FeaturedCake < ApplicationRecord
   has_attachment :photo
   validates: name, presence: true
end
