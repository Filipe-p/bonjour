class FeaturedCake < ApplicationRecord
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader
end
