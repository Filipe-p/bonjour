class OrdersController < ApplicationController
  def index
  end

  def show
    @order = Order.find(params[:id])
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
  end

  def confirmation
    UserMailer.purchase_confirmation(current_user).deliver_now
  end

end
