class DecorationsController < ApplicationController
  before_action :set_cake, only: [:new, :create, :edit, :update]
  before_action :set_dough, only: [:new, :create, :edit, :update]
  before_action :set_filling, only: [:new, :create, :edit, :update]
  before_action :set_decoration, only: [:edit, :update]

  def index
  end

  def new
    @decorations = Decoration.all
  end

  def create
    if @cake.update(decoration_params)
      redirect_to order_path(@cake.order.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def set_cake
    @cake = Cake.find(params[:cake_id])
  end

  def set_dough
    @dough = Dough.find(params[:dough_id])
  end

  def set_filling
    @filling = Filling.find(params[:filling_id])
  end

  def decoration_params
    decoration_params = params.require(:cake).permit(:decoration, :size, :shape, :photo, :photo_cache)
    decoration_params[:decoration] = Decoration.find(decoration_params[:decoration])
    decoration_params
  end
end
