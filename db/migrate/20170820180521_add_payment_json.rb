class AddPaymentJson < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :payment, :json
  end
end
