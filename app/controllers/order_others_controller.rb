class OrderOthersController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @order = Order.find(params[:order_id])
    @others = Other.all
    @total = @order.cakes.map(&:price).reduce(:+)
  end

  def new
    @order = Order.find(params[:order_id])
    @others = Other.all
    @total = @order.cakes.map(&:price).reduce(:+)
  end

  def create
    @order = Order.find(params[:order_id])
    @others = params[:other][:id]
    @others.select{|id| !id.blank? }.map do |other_id|
      other = Other.find(other_id)
      OrderOther.create(order: @order, other: other)
    end
    # redirect to order show if all ok, if not, render others again
    redirect_to order_path(@order)
  end

  def edit
  end

  def update
  end

  def destroy
    @order = Order.find(params[:order_id])
    @other_other = OrderOther.find(params[:id])
    @other_other.destroy
    redirect_to order_path(@order)
  end


end
