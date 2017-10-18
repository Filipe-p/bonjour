class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :assign_others, :others, :show, :edit, :update, :confirmation]

  def show
    @order = Order.find(params[:id])
    @cakes = @order.cakes
    @order_others = OrderOther.where(order_id: params[:id])

    @others = @order.others
    @order_others = @order.order_others

    @others_price = @order.others.map(&:price) unless @order.others.blank?
    @others_quantity = @order.order_others.map(&:quantity) unless @order.order_others.blank?

    @cakes_total = @cakes.map(&:price).reduce(:+).to_f unless @cakes.blank?
    @others_price = @others_price.zip(@others_quantity).map{|x, y| x * y}.reduce(:+).to_f unless (@others_price.blank? || @others_quantity.blank?)

    @total = @cakes_total.to_f + @others_price.to_f
  end

  def new
    @order = Order.new
  end

  def create
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      UserMailer.purchase_confirmation(Order.find(params[:id])).deliver_now
      redirect_to confirmation_order_path(@order)
    else
      render :edit
    end
  end

  def destroy
  end

  def confirmation
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:address, :user, :delivery_datetime, :contact_name, :contact_telephone, :contact_email)
  end

end
