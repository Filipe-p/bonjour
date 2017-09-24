class AddMinimumSizeToDecorations < ActiveRecord::Migration[5.1]
  def change
    add_column :decorations, :minimum_size, :integer, default: 0, null: false
  end
end
