class AddMonetize < ActiveRecord::Migration[5.1]
  def change
    remove_column :cakes, :price
    add_monetize :cakes, :price, currency: { present: false }

    remove_column :orders, :cost
    add_monetize :orders, :cost, currency: { present: false }

    remove_column :doughs, :price
    add_monetize :doughs, :price, currency: { present: false }

    remove_column :fillings, :price
    add_monetize :fillings, :price, currency: { present: false }

    remove_column :decorations, :price
    add_monetize :decorations, :price, currency: { present: false }

    remove_column :others, :price
    add_monetize :others, :price, currency: { present: false }
  end
end
