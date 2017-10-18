class CreateDecorationCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :decoration_categories do |t|
      t.references :decoration, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
