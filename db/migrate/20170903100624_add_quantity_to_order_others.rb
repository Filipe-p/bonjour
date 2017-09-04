class AddQuantityToOrderOthers < ActiveRecord::Migration[5.1]
  def change
    add_column :order_others, :quantity, :integer, default: 1, null: false
  end
end
