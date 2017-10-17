class SubscribersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]


  def create
    @subscriber = Subscriber.new(subscriber_params)

    if @subscriber.save
      flash[:notice] = "Welcome to our subscriber list!"
      redirect_to root_path
    else
      flash[:alert] = "Please review the errors in the form bellow"
      render 'pages/home'
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end