class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :address
      t.float :cost
      t.references :user, foreign_key: true
      t.datetime :delivery_datetime
      t.string :contact_name
      t.integer :contact_telephone
      t.string :contact_email

      t.timestamps
    end
  end
end
