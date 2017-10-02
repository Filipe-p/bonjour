class DeliveriesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @order = Order.find(params[:order_id])
    @delivery = Delivery.new
  end

  def create
  end

  def confirmation
    #code
  end
end
