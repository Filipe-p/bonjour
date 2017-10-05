class CustomCakesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  end

  def create
    @custom_cake = CustomCake.new(custom_cake_params)
    if @custom_cake.save
      redirect_to root_path
      # give flash message
    else
      render 'pages/design'
    end
  end

  private

  def custom_cake_params
    params.require(:custom_cake).permit(:contact_first_name, :contact_last_name, :contact_email, :contact_telephone, :message)
  end
end
