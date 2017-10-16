class DeliveriesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @order = Order.find(params[:order_id])
    @cakes = @order.cakes
    @delivery = Delivery.new
    @cakes_total = @cakes.map(&:price).reduce(:+).to_f unless @cakes.blank?
    @others_price = @order.others.map(&:price) unless @order.others.blank?
    @others_quantity = @order.order_others.map(&:quantity) unless @order.order_others.blank?
    @total = @cakes_total + @others_price.zip(@others_quantity).map{|x, y| x * y}.reduce(:+).to_f unless @cakes.blank?
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
    @cakes = @order.cakes
    @cakes_total = @cakes.map(&:price).reduce(:+).to_f unless @cakes.blank?
    @others_price = @order.others.map(&:price) unless @order.others.blank?
    @others_quantity = @order.order_others.map(&:quantity) unless @order.order_others.blank?
    @total = @cakes_total + @others_price.zip(@others_quantity).map{|x, y| x * y}.reduce(:+).to_f unless @cakes.blank?

    @delivery_time = @delivery.delivery_slot.strftime("%H:%M")

    if @delivery.address.blank?
      @address = "Na loja"
    else
      @address = @delivery.address
    end

    reset_session
  end

  def delivery_params
    params.require(:delivery).permit(:contact_first_name, :contact_last_name, :contact_telephone, :contact_email, :address, :delivery_date, :delivery_slot, :store_pickup)
  end
end
