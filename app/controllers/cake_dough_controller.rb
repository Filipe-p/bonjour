class CakeDoughController < ApplicationController
  before_action :set_cake, only: [:edit, :update]

  def new
    @cake = Cake.new
    @doughs = Dough.all
  end

  def create
    @order = Order.new
    @order.user = current_user
    if @order.save

      @cake = Cake.new(cake_params)
      @cake.order = @order

      if @cake.save
        redirect_to new_cake_dough_cake_filling_path(@cake.dough.id)
      else
        render :new
      end

    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cake.update(cake_params)
      redirect_to new_cake_dough_cake_filling_path(@cake.dough.id)
    else
      render :edit
    end
  end

  private

  def cake_params
    cake_params = params.require(:cake).permit(:dough)
    cake_params[:dough] = Dough.find(cake_params[:dough])
    cake_params
  end

  def set_cake
    @cake = Cake.find(params[:id])
  end
end
