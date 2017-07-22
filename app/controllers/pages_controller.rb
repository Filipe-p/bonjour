class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout "brevemente", only: :home
  def home
  end

  def about
  end

  def contacts
  end

  def home2
  end
end
