class AddSizeToCakes < ActiveRecord::Migration[5.1]
  def change
      add_column :cakes, :size, :string
    end
end
