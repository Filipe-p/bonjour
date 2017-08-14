class CakesController < ApplicationController
  before_action :set_cake, only: [:edit, :update]
  def index
  end

  def new
    @cake = Cake.new
    @doughs = Dough.all
  end

  def create
    if session[:order_id].blank? || !Order.exists?(session[:order_id])
      @order = Order.new
    else
      @order = Order.find(session[:order_id])
    end

    @order.user = current_user unless current_user.blank?

    if @order.save
      session[:order_id] = @order.id
      if params[:cake].blank?
        flash[:alert] = "Seleccione uma opção"
        @cake = Cake.new
        @doughs = Dough.all
        render "cakes/new"
      else
        @cake = Cake.new(cake_params)
        @cake.order = @order
        if @cake.save
          respond_to do |format|
            format.html { redirect_to new_cake_dough_filling_path(@cake, @cake.dough) }
            format.js  # <-- will render `app/views/cakes/create.js.erb`
          end
        else
          respond_to do |format|
            format.html { render :new }
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

def delete
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
