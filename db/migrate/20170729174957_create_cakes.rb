class CreateCakes < ActiveRecord::Migration[5.1]
  def change
    create_table :cakes do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :size
      t.string :shape
      t.string :message
      t.references :decoration, foreign_key: true
      t.references :dough, foreign_key: true
      t.references :filling, foreign_key: true
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
