class CreateDecorations < ActiveRecord::Migration[5.1]
  def change
    create_table :decorations do |t|
      t.string :name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
