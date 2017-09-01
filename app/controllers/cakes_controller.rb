class CakesController < ApplicationController
  include ApplicationHelper

  before_action :set_cake, only: [:edit, :update, :destroy]
  def index
  end

  def new # dough
    @cake = Cake.new
    @doughs = Dough.all
    render :doughs
  end

  def show
  end

  def doughs
    @doughs = Dough.all
      respond_to do |format|
      format.html
      format.js
    end
  end

  def decorations
    @cake_params = cake_params
    @dough = Dough.find(cake_params[:dough]) unless cake_params[:dough].blank?
    @filling = Filling.find(cake_params[:filling]) unless cake_params[:filling].blank?
    @sizes = Cake::SIZES
    @decorations = Decoration.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
# Get all the params, create or find the order and create the cake
  # Possible bug here
    @order = current_order
    @order.user = current_user unless current_user.blank?

    if @order.save
      session[:order_id] = @order.id
      if params[:cake].blank?
        flash[:alert] = "Seleccione uma opção"
        @cake = Cake.new
        @doughs = Dough.all
        render :doughs
      else
        @cake = Cake.new(convert_params(cake_params))
        @cake.order = @order
        if @cake.save
          respond_to do |format|
            format.html { redirect_to others_orders_path }
 # <-- will render `app/views/cakes/create.js.erb`
          end
        else
          respond_to do |format|
            format.html { render :doughs }
            format.js
          end
        end
      end
    else
      render :new
    end
  end

  def edit
    if @cake.update(cake_params)
      redirect_to cake_dough_filling_path(@cake, @cake.dough)
    else
      render :edit
    end
  end

  def update
  end

  def destroy
    @order = current_order
    @cake.destroy
    respond_to do |format|
      format.html {redirect_to order_path(@order)}
      format.js
    end
  end

  private

  def cake_params
    params.require(:cake).permit(:dough, :filling, :decoration, :size, :shape)
  end

  def convert_params(cake_params)
    result = {}
    result[:dough] = Dough.find(cake_params[:dough]) unless cake_params[:dough].blank?
    result[:filling] = Filling.find(cake_params[:filling]) unless cake_params[:filling].blank?
    result[:decoration] = Decoration.find(cake_params[:decoration]) unless cake_params[:decoration].blank?
    result[:size] = cake_params[:size] unless cake_params[:size].blank?
    result[:shape] = cake_params[:shape] unless cake_params[:shape].blank?
    result
  end

  def set_cake
    @cake = Cake.find(params[:id])
  end
end
