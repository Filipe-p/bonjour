class Subscriber < ApplicationRecord
  validates :email, presence: :true, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "this is not a valid email address" }

  after_create :create_subscriber

  def create_subscriber
    SubscribeToNewsletterService.new(self).create
  end
end