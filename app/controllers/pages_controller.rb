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

  private

  def contact_param
    params.require(:contacts).permit(:email, :textarea, :phone_number, :dough, :filling)
  end
end
