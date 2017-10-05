class CreateCustomCakes < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_cakes do |t|
      t.string :contact_email
      t.string :contact_first_name
      t.string :contact_last_name
      t.integer :contact_telephone
      t.text :message
      t.timestamps
    end
  end
end
