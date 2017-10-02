class CreateOrderOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :order_others do |t|
      t.references :order, foreign_key: true
      t.references :other, foreign_key: true
      t.integer :quantity, default: 1, null: false
      t.timestamps
    end
  end
end
