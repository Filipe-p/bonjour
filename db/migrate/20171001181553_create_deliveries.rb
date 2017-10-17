class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.string :address
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true
      t.date :delivery_date
      t.integer :delivery_slot
      t.string :contact_first_name
      t.string :contact_last_name
      t.integer :contact_telephone
      t.string :contact_email
      t.boolean :store_pickup, default: false, null: false
      t.boolean :done, default: false, null: false
      t.integer :nif
      t.integer :zipcode
      t.string :payment
      t.timestamps
    end
    add_monetize :deliveries, :cost, currency: { present: false }
  end
end
