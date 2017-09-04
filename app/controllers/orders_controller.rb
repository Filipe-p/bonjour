class OrdersController < ApplicationController
  def index
    @orders = Order.where(user: current_user)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def others
    @order = Order.find(params[:id])
    @others = Other.all
  end

  def assign_others
    @order = Order.find(params[:id])
    @others = params[:other][:id]
    @others.select{|id| !id.blank? }.map{|other| OrderOther.create(order: @order, other: Other.find(other))}
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
