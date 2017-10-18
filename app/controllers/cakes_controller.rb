class CakesController < ApplicationController
  include ApplicationHelper
  skip_before_action :authenticate_user!
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
    @categories = Category.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    if session[:order_id].present? && Order.exists?(session[:order_id])
      @order = Order.find(session[:order_id])
    else
      session.delete(:order_id)
      @order = Order.new
    end

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
        @cake.price_cents = (@cake.dough.price_cents + @cake.decoration.price_cents) * @cake.size
        @cake.order = @order
        if @cake.save
          respond_to do |format|
            format.html { redirect_to order_order_others_path(@order)}
          end
        else
          respond_to do |format|
            format.html { render :doughs }
            format.js
          end
        end
      end
    else
      @cake = Cake.new
      @doughs = Dough.all
      render :doughs
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
    params.require(:cake).permit(:dough, :filling, :decoration, :size, :age)
  end

  def convert_params(cake_params)
    result = {}
    result[:dough] = Dough.find(cake_params[:dough]) unless cake_params[:dough].blank?
    result[:filling] = Filling.find(cake_params[:filling]) unless cake_params[:filling].blank?
    result[:decoration] = Decoration.find(cake_params[:decoration]) unless cake_params[:decoration].blank?
    result[:age] = cake_params[:age].to_i unless cake_params[:age].blank?
    result[:size] = cake_params[:size].to_f unless cake_params[:size].blank?

    result
  end

  def set_cake
    @cake = Cake.find(params[:id])
  end
end
