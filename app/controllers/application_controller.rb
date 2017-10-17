class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :back_link
  before_action :new_subscriber
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def back_link
    session.delete(:back_link) unless session[:back_link].blank?
    session[:back_link] = request.referrer
  end

  def new_subscriber
    @subscriber = Subscriber.new
  end
end
