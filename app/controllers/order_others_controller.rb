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

    # in each slice
    @quantities = order_others_params[:quantity].select{|id| !id.blank? }
    @others = order_others_params[:other_id].select{|id| !id.blank? }

    @others.zip(@quantities).map do |id|
      other = Other.find(id[0])
      quantity = id[1]
      OrderOther.create(order: @order, other: other, quantity: quantity )
    end
    # redirect to order show if all ok, if not, render others again
    redirect_to order_path(@order)
  end

  def edit
    # aqui vais editar a quantidade dos order_others
    # e poder adicionar ou diminuir a quantidade
    # com um form no front end em que com o mais metes mais um numero (com js)
    # e com um menos tiras (até ser zero)
  end

  def update
  end

  def destroy
    @order = Order.find(params[:order_id])
    @other_other = OrderOther.find(params[:id])
    @other_other.destroy
    redirect_to order_path(@order)
  end

 private

  def order_others_params
    params.require(:order_others).permit(:order_id,{ other_id: []}, {quantity: []})
  end

end

