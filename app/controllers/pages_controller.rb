class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout "brevemente", only: :home
  layout "teste", only: :home2

  def home
  end

  def about
  end

  def contacts
  end

  def home2
  end

  def gallery
  end
end
