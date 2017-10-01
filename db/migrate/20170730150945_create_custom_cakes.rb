class CreateCustomCakes < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_cakes do |t|
      t.string :email
      t.string :name
      t.text :content
      t.references :dough, foreign_key: true
      t.references :filling, foreign_key: true

      t.timestamps
    end
  end
end
