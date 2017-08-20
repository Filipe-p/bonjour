module ApplicationHelper
  def current_order
    if session[:order_id].blank? || !Order.exists?(session[:order_id])
      @order = Order.new
    else
      @order = Order.find(session[:order_id])
    end
  end
end
