class OthersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_order

  def new
  end

  def show
    @others = Other.all
  end

  def create
    # assign other to the current order
    # redirect to order show
  end

  # IS THIS WORKING?

  # Should be in the OrderOthers controller
  #  =========================================
  def destroy
    @order = current_order
    @other.destroy
    respond_to do |format|
      format.html {redirect_to order_path(@order)}
      format.js
    end
  end

  #  =========================================

  private

  def set_order
    @order = Order.find(params[:order_id])
  end
end
