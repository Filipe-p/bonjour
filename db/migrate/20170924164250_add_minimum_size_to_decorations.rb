class AddMinimumSizeToDecorations < ActiveRecord::Migration[5.1]
  def change
    add_column :decorations, :minimum_size, :float, default: 0.0, null: false
  end
end
