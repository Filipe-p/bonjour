class CreateDoughs < ActiveRecord::Migration[5.1]
  def change
    create_table :doughs do |t|
      t.string :name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
