class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:assign_others, :others]

  def index
    @orders = Order.where(user: current_user)
  end

  def show
    @order = Order.find(params[:id])
    @cakes = Order.find(params[:id]).cakes
    @total = Order.find(1).cakes.map(&:price).reduce(:+) + Order.find(1).others.map(&:price).reduce(:+)
  end

  def new
    @order = Order.new
  end

  def others
    @order = Order.find(params[:id])
    @others = Other.all
    @total = Order.find(1).cakes.map(&:price).reduce(:+)
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
