class CreateCakes < ActiveRecord::Migration[5.1]
  def change
    create_table :cakes do |t|
      t.string :name
      t.string :description
      t.float :size
      t.string :message
      t.integer :age
      t.references :decoration, foreign_key: true
      t.references :dough, foreign_key: true
      t.references :filling, foreign_key: true
      t.references :order, foreign_key: true
      t.timestamps
    end
    add_monetize :cakes, :price, currency: { present: false }
  end
end
