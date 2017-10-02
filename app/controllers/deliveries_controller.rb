class DeliveriesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @order = Order.find(params[:order_id])
    @delivery = Delivery.new
  end

  def create
    @order = Order.find(params[:order_id])
    @delivery = Delivery.new(delivery_params)
    @delivery.order = @order
    if @delivery.save
      redirect_to order_confirmation_path(@order)
    else
      render :new
    end
  end

  def confirmation
    @order = Order.find(params[:order_id])
    @delivery = @order.delivery
  end

  def delivery_params
    params.require(:delivery).permit(:contact_first_name, :contact_last_name, :contact_telephone, :contact_email, :address, :delivery_date, :delivery_slot, :store_pickup)
  end
end
