class CreateJoinTableOrderExtra < ActiveRecord::Migration[5.1]
  def change
    create_join_table :orders, :extras do |t|
      # t.index [:order_id, :extra_id]
      # t.index [:extra_id, :order_id]
    end
  end
end
