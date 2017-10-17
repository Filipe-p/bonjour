class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.references :order, foreign_key: true
      t.timestamps
    end
    add_monetize :others, :price, currency: { present: false }
  end
end
