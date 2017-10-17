class CreateDecorations < ActiveRecord::Migration[5.1]
  def change
    create_table :decorations do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.float :minimum_size, default: 0.0, null: false
      t.timestamps
    end
    add_monetize :decorations, :price, currency: { present: false }
  end
end
