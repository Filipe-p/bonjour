class CreateJoinTableOrderCake < ActiveRecord::Migration[5.1]
  def change
    create_join_table :orders, :cakes do |t|
      # t.index [:order_id, :cake_id]
      # t.index [:cake_id, :order_id]
    end
  end
end
