class CreateOrderCakes < ActiveRecord::Migration[5.1]
  def change
    create_table :order_cakes do |t|
      t.references :cake, foreign_key: true
      t.references :order, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
