class CreateFeaturedCakes < ActiveRecord::Migration[5.1]
  def change
    create_table :featured_cakes do |t|
      t.string :name
      t.timestamps
    end
  end
end
