class CreateDoughs < ActiveRecord::Migration[5.1]
  def change
    create_table :doughs do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
    add_monetize :doughs, :price, currency: { present: false }
  end
end
