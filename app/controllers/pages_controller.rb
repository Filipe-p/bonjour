class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    render layout: "brevemente"
  end

  def about
  end

  def contacts
  end

  def home2
    render layout: "teste"
  end

  def gallery
  end
end
