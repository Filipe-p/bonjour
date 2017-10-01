class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.string :name
      t.float :price
      t.string :description
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
