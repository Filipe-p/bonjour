module ApplicationHelper
  def current_order
    if session[:order_id].present? && Order.exists?(session[:order_id])
      @order = Order.find(session[:order_id])
    else
      session.delete(:order_id)
      @order = Order.new
    end
  end

  def current_order_path
    if session[:order_id].present? && Order.exists?(session[:order_id])
      @order = Order.find(session[:order_id])
      order_path(@order)
    else
      session.delete(:order_id)
      @order = Order.new
      new_order_path
    end
  end
end
