class FillingsController < ApplicationController
  before_action :set_cake, only: [:new, :create, :edit, :update]
  before_action :set_dough, only: [:new, :create, :edit, :update]
  before_action :set_filling, only: [:edit, :update]

  def index
  end

  def new
    @fillings = @dough.fillings
  end

  def create
    if @cake.update(cake_filling_params)
      redirect_to new_cake_dough_filling_decoration_path(@cake.id, @dough.id, @cake.filling.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cake.update(cake_filling_params)
      redirect_to new_cake_dough_filling_decoration_path(@cake.id, @dough.id, @cake.filling.id)
    else
      render :edit
    end
  end

  def delete
  end

  def set_cake
    @cake = Cake.find(params[:cake_id])
  end

  def set_dough
    @dough = Dough.find(params[:dough_id])
  end

  def cake_filling_params
    cake_filling_params = params.require(:cake).permit(:filling)
    cake_filling_params[:filling] = Filling.find(cake_filling_params[:filling])
    cake_filling_params
  end
end
