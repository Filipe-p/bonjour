class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    render layout: "brevemente"
  end

  def about
  end

  def contacts
    @contact = Contact.new
  end

  def home2
    @subscriber = Subscriber.new
  end

  def gallery
  end

  def design
    @custom_cake = CustomCake.new
  end
end
