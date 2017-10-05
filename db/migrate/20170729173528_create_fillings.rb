class CreateFillings < ActiveRecord::Migration[5.1]
  def change
    create_table :fillings do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
    add_monetize :fillings, :price, currency: { present: false }
  end
end
