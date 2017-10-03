class OrderOthersController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @order = Order.find(session[:order_id])
    @order_other_params = order_other_params
    @order_other = OrderOther.find(params[:id]).destroy
     respond_to do |format|
      format.html {redirect_to order_path(@order)}
      format.js
    end
  end


private

  def order_other_params
    params.require(:id)
  end

end

