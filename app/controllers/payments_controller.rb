class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    @order.cost = 20
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.cost_cents, # or amount_pennies
      description:  "Payment for order #{@order.id} at pastelaria-bonjour.pt",
      currency:     @order.cost.currency
    )

    @order.update(payment: charge.to_json, state: 'Paid')
    redirect_to confirmation_order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

  private

    def set_order
      @order = Order.find(params[:order_id])
    end
end
