class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :assign_others, :others, :show, :edit, :update, :confirmation]

  # will not be used
  def index
    @orders = Order.where(user: current_user)
  end

  #  show cart
  def show
    @order = Order.find(params[:id])
    @cakes = @order.cakes
    @total = @cakes.map(&:price).reduce(:+) + @order.others.map(&:price).reduce(:+)
  end

  # does not exist
  def new
    @order = Order.new
  end

  def others
    @order = Order.find(params[:id])
    @others = Other.all
    @total = @order.cakes.map(&:price).reduce(:+)
  end

  def assign_others
    @order = Order.find(params[:id])
    @others = params[:other][:id]
    @others.select{|id| !id.blank? }.map do |other_id|
      other = Other.find(other_id)
      OrderOther.create(order: @order, other: other)
    end
    # redirect to order show if all ok, if not, render others again
    redirect_to order_path(@order)
  end

  # does not exist
  def create
  end

  def edit
    @order = Order.find(params[:id])
  end

  # should be in the deliveries controller
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

  # should be in the deliveries
  def confirmation
    @order = Order.find(params[:id])
  end

  #  must change, now only user
  def order_params
    params.require(:order).permit(:address, :user, :delivery_datetime, :contact_name, :contact_telephone, :contact_email)
  end

end
